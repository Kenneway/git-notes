# hot-fix分支

### 类似于release分支，只不过该分支是处理bug的，从master分支出来

	#git checkout -b hotfix-1.1.1 master

### 同上需要归并到master和develop

	#git tag -a 1.2.1

### 删除hotfix分支

	#git branch -d hotfix-1.1.1
