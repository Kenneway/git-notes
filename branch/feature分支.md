# feature分支

### 从develop分支发出，最终归并到develop分支

	#git checkout -b  newfeture develop
	#git push origin newfeture
	
### 关联分支

	#git branch --set-upstream-to=origin/newfeture newfeture 

### 分支完成时，切到develop分支，merge该newfeture分支

	#git checkout develop
	
### 归并newfeature分支,使用--no-ff属性，能够知道这是一个feature递交版本过程，容易追溯，如下图的newfeature提交

	#git merge --no-ff newfeature