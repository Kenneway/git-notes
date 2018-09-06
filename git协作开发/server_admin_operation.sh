# 项目服务器管理员操作

1. 用户添加
2. ssh RSA登录---免密登录
3. 创建git代码的仓库目录


### 1. 新建一个工程用户，作为该项目的ssh登录用户，也是git代码的存放目录

	su root / sudo su
	# 快捷创建用户
	adduser git

### 2. 添加所有项目成员的ssh公钥

	# 切换到新的账号
	su git
	# 新建.ssh目录，/home/git/.ssh/
	mkdir /home/git/.ssh

	# 在该目录新建authorized_keys文件
	touch authorized_keys
	# 注意是ssh-rsa打头的，检查是否出错
	#拷贝项目成员ssh公钥到此目录
	
	# 验证ssh是否能免密登录
	# 项目成员在自己的系统下执行以下命令
	ssh -p 2222 git@172.18.7.208
	# -p后面是git服务器sshd的端口号
	# git是ssh的用户名
	# 172.18.7.208是git服务器的ip
	# 能登录则说明免密成功，接下来再做git的相关工作

	
### 3. 创建git代码的仓库目录，该目录只作为存储代码的，不能执行git的一般操作

	cd /home/git/git
	sudo su
	su git
	mkdir pictext-detector.git
	# 使用--bare选项时,不再生成.git目录,而是只生成.git目录下面的版本历史记录文件
	git --bare init ./pictext-detector.git
	# 或者
	git --bare init /home/git/git/pictext-detector.git

	# 更改git仓库的权限
	# chown -R git:git pictext-detector.git/

	
