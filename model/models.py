# Author: Heather and Amy

import pandas as pd
import numpy as np
from sklearn.model_selection import KFold
from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt

np.random.seed(5)


def main():
    split_method = 'ids'
    asynchronous = True
    async_method = 'random'

    # read in data and use all except the 'time' column as features
    data_file = 'script_feature_labels.csv'
    cols = pd.read_csv(data_file, nrows=1).columns
    X = pd.read_csv(data_file, usecols=cols[:-1], index_col='script_id')
    y = pd.read_csv(data_file, usecols=[cols[0], cols[-1]], index_col='script_id')
    test_idx, lr, rf = train_test(X, y, split_method)

    # if asynchronous, also generate non-progressive equivalent
    if asynchronous:
        X_np, y_np = generate_non_progressive(X, y, method=async_method, n_batches=25)
        eval(X.loc[test_idx], y.loc[test_idx], X_np.loc[test_idx], y_np[test_idx], lr, rf)

    # evaluate progressive vs non-progressive performance



# ===== FUNCTIONS FOR TRAINING AND TESTING MODELS =====

def train_test(X, y, split_method):
    """Trains and tests models"""
    if split_method is 'ids':
        X_train, X_test, y_train, y_test = id_split(X, y)
    else:
        X_train, X_test, y_train, y_test = random_split(X, y)
    test_idx = X_test.index

    # drop batch column prior to training and testing the models
    if 'batch' in X_train.columns:
        X_train = X_train.drop('batch', axis=1)
        X_test = X_test.drop('batch', axis=1)
    if isinstance(y_train, pd.DataFrame) and 'batch' in y_train.columns:
        y_train = y_train.drop('batch', axis=1)
        y_test = y_test.drop('batch', axis=1)
    
    # get sizes for plotting
    train_size = np.array(X_train[' total_size'])
    test_size = np.array(X_test[' total_size'])

    # reshape to 1d array
    y_train = np.ravel(y_train); y_test = np.ravel(y_test)

    # Linear regression model
    print("Linear Regression:")
    model, train_error, train_perc_error, test_error, test_perc_error = lin_regression(X_train, y_train, X_test, y_test)
    plot(train_size, train_perc_error, test_size, test_perc_error, 'Linear Regression')
    hist_plot(train_error, test_error, 'Linear Regression')
    lr = {"model": model, "train error": train_error, "test error": test_error}
                 
    # Random forest model
    print("Random Forest:")
    model, train_error, train_perc_error, test_error, test_perc_error = random_forest(X_train, y_train, X_test, y_test)
    plot(train_size, train_perc_error, test_size, test_perc_error, 'Random Forest')
    hist_plot(train_error, test_error, 'Random Forest')
    rf = {"model": model, "train error": train_error, "test error": test_error}

    return test_idx, lr, rf


def random_split(X, y, test_size=0.3):
    """Randomly split the dataset into train and test (default is 70:30 for train:test)"""
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=test_size, random_state=5) 
    return X_train, X_test, y_train, y_test


def id_split(X, y, split=70):
    """Split using script ids (scripts 1-70 used train datasets, 70-100 used test datasets)"""
    scripts = np.array([int(X.index.str.split('-')[i][2]) for i in range(X.shape[0])])
    train_idx = np.where(scripts <= split)
    test_idx = np.where(scripts > split)
    # define train and test sets
    X_train = X.iloc[train_idx]
    X_test = X.iloc[test_idx]
    y_train = y.iloc[train_idx]
    y_test = y.iloc[test_idx]
    # print("Train size:", X_train.shape, X_train.shape[0]/X.shape[0])
    # print("Test size:", X_test.shape, X_test.shape[0]/X.shape[0])
    return X_train, X_test, y_train, y_test


def lin_regression(X_train, y_train, X_test, y_test):
    """ Linear Regression """
    model = LinearRegression()
    model.fit(X_train, y_train)

    yhat_train = model.predict(X_train)
    train_abs_error = abs(yhat_train - y_train)
    train_perc_error = train_abs_error / (y_train)
    print('Train Accuracy:')
    print('Average Absolute Error %.4f' %(np.mean(train_abs_error)))
    # print_accuracies(X_train.index, train_perc_error)

    yhat_test = model.predict(X_test)
    test_abs_error = abs(yhat_test - y_test)
    test_perc_error = test_abs_error / (y_test)                         
    print('Test Accuracy:')
    print('Average Absolute Error %.4f' %(np.mean(test_abs_error)))
    # print_accuracies(X_test.index, test_perc_error)
    return model, train_abs_error, train_perc_error, test_abs_error, test_perc_error


def random_forest(X_train, y_train, X_test, y_test):
    """ Random Forest """
    # fit and train model
    model = RandomForestRegressor(n_estimators=50, random_state=5)
    model.fit(X_train, y_train)

    yhat_train = model.predict(X_train)
    train_abs_error = abs(yhat_train - y_train)
    train_perc_error = train_abs_error / (y_train)
    print('Train Accuracy:')
    print('Average Absolute Error %.4f' %(np.mean(train_abs_error)))
    # print_accuracies(X_train.index, train_perc_error)

    yhat_test = model.predict(X_test)
    test_abs_error = abs(yhat_test - y_test)
    test_perc_error = test_abs_error / (y_test)                                   
    print('Test Accuracy:')
    print('Average Absolute Error %.4f' %(np.mean(test_abs_error)))
    # print_accuracies(X_test.index, test_perc_error)
    return model, train_abs_error, train_perc_error, test_abs_error, test_perc_error


def plot(train_size, train_perc_error, test_size, test_perc_error, model_name):
    """ Helper function to plot file sizes against percent error """
    fig, axs = plt.subplots(2, 1)
    fig.subplots_adjust(hspace=.5)
    axs[0].scatter(train_size, train_perc_error)
    axs[0].set_title('Training Error')
    axs[0].set_xlabel('File size')
    axs[0].set_ylabel('Percent Error')

    axs[1].scatter(test_size, test_perc_error)
    axs[1].set_title('Testing Error')
    axs[1].set_xlabel('File size')
    axs[1].set_ylabel('Percent Error')

    plt.suptitle(model_name + ' Percent Error for Varying File Sizes')
    plot_name = model_name.split()
    plt.savefig(plot_name[0][0] + plot_name[1][0] + '.png')


def hist_plot(train_error, test_error, model_name):
    """ Helper function to create a histogram of absolute errors """
    fig, axs = plt.subplots(2, 1)
    fig.subplots_adjust(hspace=.5)
    axs[0].hist(train_error)
    axs[0].set_title('Training Error')
    axs[0].set_xlabel('Absolute Error (s)')
    axs[0].set_ylabel('Counts')

    axs[1].hist(test_error)
    axs[1].set_title('Testing Error')
    axs[1].set_xlabel('Absolute Error (s)')
    axs[1].set_ylabel('Counts')

    plt.suptitle(model_name + ' Histogram of Absolute Errors')
    plot_name = model_name.split()
    plt.savefig(plot_name[0][0] + plot_name[1][0] + '_hist.png')


def print_accuracies(ids, perc_error):
    """ Helper function to print file ids and percent errors """
    print('id\tperc_error')
    for i in range(len(ids)):
        print('%s\t%f' %(str(ids[i]),perc_error[i]))


# ===== FUNCTIONS FOR NON-PROGRESSIVE MODELS =====

def generate_non_progressive(X, y, method='random', n_batches=20):
    """Options: random (predict for each individual sample), 
                random_sum (predict on each batch)"""
    # randomly assign batches
    batches = np.random.choice(n_batches, X.shape[0])

    X_np = X.copy()
    y_np = y.copy()
    X_np['batch'] = batches
    y_np['batch'] = batches

    # assign num_async to batches
    if 'sum' in method:
        # sum over features
        agg_cols = {col:'sum' for col in X_np.columns[:-1]}  # skip batch col
        agg_cols['async_num'] = 'first'
        X_np = X_np.groupby('batch').agg(agg_cols)
        # sum times
        y_np = y_np.groupby('batch').sum()
    else:
        # sort by batches
        X_np['time'] = y_np.time
        X_np = X_np.sort_values('batch')
        y_np = X_np.time
        X_np = X_np.drop('time', axis=1)

        # assign async_num of the first entry in each batch to the rest of the batch
        async_num = X_np.async_num[0]
        prev_batch = batches[0]
        for i, batch in enumerate(batches):
            if batch == prev_batch:
                X_np.async_num[i] = async_num
            else:
                prev_batch = batch
                async_num = X_np.async_num[i]

    return X_np, y_np


def eval(X, y, X_np, y_np, lr, rf):
    """Evaluate model performance using progressive deadlines vs non-progressive deadlines"""
    batches = X_np.batch.values
    X_np = X_np.drop('batch', axis=1)
    # get predictions
    names = ['lr_p', 'rf_p', 'lr_np', 'rf_np']
    predictions = {}
    for name, model, test_data in zip(names, [lr, rf, lr, rf], [X, X, X_np, X_np]):
        pred = model['model'].predict(test_data)
        predictions[name] = pred

    # sum predictions per batch
    pred_df = pd.DataFrame(predictions, columns=names)
    pred_df['batch'] = batches
    pred_df['actual'] = y.values
    pred_df_sum = pred_df.groupby('batch').sum()
    print(pred_df_sum)

    # plot
    plot_p_np_predictions(pred_df, pred_df_sum)
    

def plot_p_np_predictions(pred_df, pred_df_sum):
    # overlay histograms of errors (batch)
    plt.figure()
    plt.hist(np.abs(pred_df_sum.actual - pred_df_sum.lr_np), alpha=0.5, label='Linear Regression')
    plt.hist(np.abs(pred_df_sum.actual - pred_df_sum.rf_np), alpha=0.5, label='Random Forest')
    plt.legend()    
    plt.title("Histogram of Non-progressive Absolute Errors (Batched)")
    plt.xlabel('Absolute Error (s)')
    plt.ylabel('Counts')
    plt.savefig('np_batch_error_hist.png')

    # line plot
    plt.figure()
    plt.plot(pred_df_sum.lr_np)
    plt.plot(pred_df_sum.rf_np)
    plt.plot(pred_df_sum.actual)
    plt.title("Non-progressive Predictions (Batched)")
    plt.xlabel('Batch')
    plt.ylabel('Runtime (s)')
    plt.savefig('np_batch_error.png')

    # overlay histograms of errors (individual)
    plt.figure()
    plt.hist(np.abs(pred_df.actual - pred_df.lr_np), alpha=0.5, label='Linear Regression')
    plt.hist(np.abs(pred_df.actual - pred_df.rf_np), alpha=0.5, label='Random Forest')
    plt.legend()    
    plt.title("Histogram of Non-progressive Absolute Errors (Per-script)")
    plt.xlabel('Absolute Error (s)')
    plt.ylabel('Counts')
    plt.savefig('np_script_error_hist.png')

    # line plot
    plt.figure()
    plt.plot(pred_df.lr_np)
    plt.plot(pred_df.rf_np)
    plt.plot(pred_df.actual)
    plt.title("Non-progressive Predictions (Per-script)")
    plt.xlabel('Batch')
    plt.ylabel('Runtime (s)')
    plt.savefig('np_script_error.png')



if __name__ == '__main__':
    main()
