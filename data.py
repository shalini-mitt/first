y_test=[60000, 500000, 110000]
y_pred=[57880, 487400, 0.105320]

from sklearn.metrics import r2_score
r2 = r2_score(y_test, y_pred)
print('r2 score for the random forest classifier model:', r2)
print("My name is shalini mittal")