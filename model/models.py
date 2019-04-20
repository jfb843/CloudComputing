import pandas as pd
import numpy as np
from sklearn.model_selection import KFold
from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt


def main():
    # read in data and use all except the 'time' column as features
    data_file = 'script_feature_labels.csv'
    cols = pd.read_csv(data_file, nrows=1).columns
    X = pd.read_csv(data_file, usecols=cols[:-1], index_col='script_id')
    y = pd.read_csv(data_file, usecols=[cols[0], cols[-1]], index_col='script_id')

    # k-fold cross validation
    # kf = KFold(n_splits=5)
    # for train_index, test_index in kf.split(X):
    # X_train, X_test = X[train_index], X[test_index]
    # y_train, y_test = y[train_index], y[test_index]

    # Randomly split the dataset into train and test (70:30 for train:test)
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=5) 
    y_train = np.ravel(y_train); y_test = np.ravel(y_test)  # reshape to 1d array
    train_size = np.array(X_train[' total_size'])
    test_size = np.array(X_test[' total_size'])

    # Linear regression model
    print("Linear Regression:")
    train_perc_error, test_perc_error = lin_regression(X_train, y_train, X_test, y_test)
    plot(train_size, train_perc_error, test_size, test_perc_error, 'Linear Regression')
                 
    # Random forest model
    print("Random Forest:")
    train_perc_error, test_perc_error = random_forest(X_train, y_train, X_test, y_test)
    plot(train_size, train_perc_error, test_size, test_perc_error, 'Random Forest')


def lin_regression(X_train, y_train, X_test, y_test):
    """ Linear Regression """
    model = LinearRegression()
    model.fit(X_train, y_train)

    yhat_train = model.predict(X_train)
    train_perc_error = abs(yhat_train - y_train)/ (y_train)
    print('Train Accuracy:')
    print_accuracies(X_train.index, train_perc_error)

    yhat_test = model.predict(X_test)
    test_perc_error = abs(yhat_test - y_test) / (y_test)                         
    print('Test Accuracy:')
    print_accuracies(X_test.index, test_perc_error)
    return train_perc_error, test_perc_error


def random_forest(X_train, y_train, X_test, y_test):
    """ Random Forest """
    # fit and train model
    model = RandomForestRegressor(n_estimators=50, random_state=5)
    model.fit(X_train, y_train)

    yhat_train = model.predict(X_train)
    train_perc_error = abs(yhat_train - y_train)/ (y_train)
    print('Train Accuracy:')
    print_accuracies(X_train.index, train_perc_error)

    yhat_test = model.predict(X_test)
    test_perc_error = abs(yhat_test - y_test) / (y_test)                         
    print('Test Accuracy:')
    print_accuracies(X_test.index, test_perc_error)
    return train_perc_error, test_perc_error


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


def print_accuracies(ids, perc_error):
    """ Helper function to print file ids and percent errors """
    print('id\tperc_error')
    for i in range(len(ids)):
        print('%d\t%f' %(ids[i],perc_error[i]))


if __name__ == '__main__':
    main()