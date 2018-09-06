# 项目成员：

### 基本流程

一般工作流程如下：
1. 克隆Git资源作为工作目录
2. 在克隆的资源上添加或修改文件
3. 如果他人修改，可更新资源
4. 查看修改并提交修改
5. 如果发现错误，可撤回提交并再次修改提交

### 1.生成ssh RSA公钥

	ssh-keygen –t rsa -C "kenneway@sina.com"
	# 生成的默认路径是~/.ssh/id_rsa.pub (公钥）
	# 这个公钥是要给项目服务器管理员的

### 2.待项目主管push到服务器之后

	git clone git@172.18.7.208:/home/git/pictext-detector.git
	# (gitserver
		cat>~/.ssh/config
		# 映射一个别名
		host gitserver
		hostname 172.18.7.208
		port 2222
		# ctrl+c或者ctrl+d
	)
	
	cd [新建的代码目录]
	git branch -a
	# 同步开发者分支或其他你需要的工作分支到本地
	git checkout -b develop origin/develop
	
### 3.git commit -a -m "你的提交说明"

### 4.git remote add origin git@172.18.7.208:/home/git/git/pictext-detector.git
（这一步可以不要，默认origin已经添加） 
 
### 4.也许remote已经有更新，如果你的代码没有给其他人共享，可以使用git pull --rebase或者 git fetch（这样不会做归并操作，也可以同步最新的分支）

另外两个相关的命令是: git pull和 git pull --rebase.
两者的区别：
git pull = git fetch + git merge
git pull --rebase = git fetch + git rebase

### 5.git push origin develop 上传分支

