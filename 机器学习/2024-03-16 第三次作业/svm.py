import pandas as pd
from sklearn.svm import SVC


df = pd.DataFrame([
    [2, 2, 1],
    [4, 4, 1],
    [4, 0, 1],
    [0, 0, -1],
    [2, 0, -1],
    [0, 2, -1],
], columns=['x1', 'x2', 'y'])

X = df[['x1', 'x2']]
y = df['y']

clf = SVC(kernel='linear')
clf.fit(X, y)

# best hyperplane
print(clf.coef_, clf.intercept_)
