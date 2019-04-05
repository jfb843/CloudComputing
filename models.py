import pandas as pd
from sklearn.model_selection import KFold
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt


def main():
        X = pd.read_csv('feature_tbl.csv',usecols=[1,2], index_col=0, names=['id', 'size'], header=None)
        y = pd.read_csv('feature_tbl.csv', usecols = [1,3], index_col=0, names=['id', 'time'], header=None)

        # k-fold cross validation
        # kf = KFold(n_splits=5)
        # for train_index, test_index in kf.split(X):
        # X_train, X_test = X[train_index], X[test_index]
        # y_train, y_test = y[train_index], y[test_index]

        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=5) 
        lin_regression(X_train, y_train, X_test, y_test)
                                                
def lin_regression(X_train, y_train, X_test, y_test):
    """ Linear Regression """
    model = LinearRegression()
    model.fit(X_train, y_train)

    yhat_train = model.predict(X_train)
    train_perc_error = abs(yhat_train - y_train)/ (y_train)
    print('Train Accuracy:', train_perc_error)

    yhat_test = model.predict(X_test)
    test_perc_error = abs(yhat_test - y_test) / (y_test)                         
    print('Test Accuracy:', test_perc_error)

    # plot
    fig, axs = plt.subplots(2, 1)
    fig.subplots_adjust(hspace=.5)
    axs[0].scatter(X_train['size'], train_perc_error)
    axs[0].set_title('Training Error')
    axs[0].set_xlabel('File size')
    axs[0].set_ylabel('Percent Error')

    axs[1].scatter(X_test['size'], test_perc_error)
    axs[1].set_title('Testing Error')
    axs[1].set_xlabel('File size')
    axs[1].set_ylabel('Percent Error')

    plt.suptitle('Linear Regression Percent Error for Varying File Sizes')
    plt.savefig('lr.png')


if __name__ == '__main__':
    main()
