# 项目主管：

### 1.做出项目原型

	git init
	git add -A
	git commit  -m "项目说明"

### 创建开发分支

	git checkout -b develop

### 2.添加远程源

	git remote add origin git@172.18.7.208:/home/git/git/pictext-detector.git
	# 注意检查是否有同名remote
	# (gitserver
		cat>~/.ssh/config
		# 映射一个别名
		host gitserver
		hostname 172.18.7.208
		port 2222
		# ctrl+c或者ctrl+d
	)

### 3.推送至项目服务器

	# 推送master分支到项目服务器
	git push origin master
	# 推送develop分支到项目服务器
	git push origin develop
	
### 4.从项目服务器拉取

	# 拉取远程的master分支到本地develop分支
	git pull origin master:develop
	# 拉取远程的develop分支到本地develop分支
	git pull origin develop:develop
	
### 5.指定本地分支和远程分支的关系，否则git pull不下来（但是能git push上去）

	#git branch --set-upstream-to=origin/develop develop

	# 可以查看local和remote的对应关系
	git branch --all

### 6.项目主管做自己的事

	# 提交前先统一一下版本

	git pull --rebase
	# rebase作用详解指令详解
	git pull --rebase
	# 重整是线性的，如Ubuntu-file3之前的几次


	
	