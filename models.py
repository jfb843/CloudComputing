import pandas as pd
from sklearn.model_selection import KFold
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt


def main():
        X = pd.read_csv('feature_tbl.csv',usecols=[0,2], index_col=0, names=['id', 'size'], header=None)
        y = pd.read_csv('feature_tbl.csv', usecols = [0,3], index_col=0, names=['id', 'time'], header=None)

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

    fig, axs = plt.subplots(1, 2, tight_layout=True)
    axs[0].hist(train_perc_error, bins=10)
    axs[1].hist(test_perc_error, bins=10)
    plt.savefig('lr.png')


if __name__ == '__main__':
    main()
