<h1>SAMPLING ASSIGNMENT</h1>
<h3>About the dataset</h3>
<p>The dataset contains 772 entries with two classes class 0 and class 1. The dataset is not balanced as it contains 763 entries for class 0 and only 9 for class 1. So, SMOTE is used to balance the dataset. SMOTE stands for Synthetic Minority Oversampling Technique. It works by randomly picking a point from the minority class and computing the k-nearest neighbors for this point.</p>
<h3>Sample size calculation</h3>
The sample size is calculated as:
<i>n=Z<sup>2</sup>.p.(1-p)/E<sup>2</sup></i>
<p>where n=sample size, p=standard deviation , Z= z-score , E= margin of error</p>
<h3>Sampling techniques used</h3>
<ol>
  <li>Simple Random Sampling</li>
  <li>Systematic Random Sampling</li>
  <li>Cluster Sampling</li>
  <li>Bootstrap Sampling</li>
</ol>  
<h3>Models used for evaluation</h3>
<ol>
  <li>Logistic Regression</li>
  <li>Support Vector Classifier</li>
  <li>XGBoost Classifier</li>
  <li>Random Forest</li>
   <li>Gaussian Naive Bayes</li>
</ol>  
<h3>Accuracy Scores</h3>

|          | Model 1(LR) | Model 2(SVC) | Model 3(XGB) | Model 4(RF) | Model 5(GB) |
|----------|---------|---------|---------|---------|---------|
| Sample 1(Simple Random) | 0.87    | 0.93    | 0.94    | 0.99    | 0.78    |
| Sample 2(Systematic Random) | 0.89    | 0.94    | 0.97    | 0.97    | 0.81    |
| Sample 3(Cluster Sampling) | 0.93    | 0.97    | 0.99    | 1(overfit)    | 0.83    |
| Sample 4(Bootstrap Sampling) | 0.95    | 0.95    | 0.96    | 1(Overfit)    | 0.87 |

<h3>Result</h3> 
Bootstrap sampling technique is the most effective sampling technique.

<h5>Submitted by</h5>
Atanu Mondal (102117208)
3CS8
