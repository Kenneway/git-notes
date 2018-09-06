# release分支

### 当新的feature足够多，准备发布新的版本号版本。 同样从develop出发，最终用于更新到master分支.该版本不新增新的feature或大的改动

	#git checkout -b release-1.0 develop
	#git push   origin release-1.0
	#git branch --set-upstream-to=origin/release-1.0  release-1.0
	
### 通过测试，没有明显bug，发布到master

	#git checkout master
	#git merge --no-ff release-1.0
	#git tag -a v1.0 (tag就是一个只读的branch，一般为每一个可发布的里程碑版本打一个tag. 里程碑标记。 也可以被checkout)
	#git push origin master
	
### 切到develop分支，也归并发布版的改动

	#git checkout develop
	#git merge --no-ff release-1.0
	
### 删除release分支

	#git branch -d release-1.0
