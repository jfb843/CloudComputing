import pandas as pd
from sklearn.model_selection import KFold
from sklearn.linear_model import LinearRegression


def main():
	X = pd.read_csv('')
	y = pd.read_csv('')

	# k-fold cross validation
	# kf = KFold(n_splits=5)
	# for train_index, test_index in kf.split(X):
		# X_train, X_test = X[train_index], X[test_index]
		# y_train, y_test = y[train_index], y[test_index]

	X_train, y_train, X_test, y_test = train_test_split(
		X, y, test_size=0.3, random_state=5) 
	lin_regression(X_train, y_train, X_test, y_test)


def lin_regression(X_train, y_train, X_test, y_test):
	""" Linear Regression """
	model = LinearRegression()
	model.fit(X_train)

	yhat_train = model.predict(X_train)	
	accuracy = yhat_train == y_train
	print('Train Accuracy:', 1 - accuracy.mean())

	yhat_test = model.predict(X_test)
	accuracy = yhat_test == y_test
	print('Test Accuracy:', 1 - accuracy.mean())



if __name__ == '__main__':
	main()