# Install Git
```sh
$ sudo yum -y install git
```

# Make ssh
```sh
$ cd ~/.ssh
$ ssh-keygen -t rsa -C "Oli_C85@icloud.com"
```

# Edit .zshrc
```sh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/Oli
```
```sh
$ source ~/.zshrc
```

# Create .gitignore
```sh
$ curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore
```

# Make Git directory
```sh
$ mkdir ~/git
$ cd ~/git
$ git init
$ git clone git@github.com:OliC85/MacOS.git
```
