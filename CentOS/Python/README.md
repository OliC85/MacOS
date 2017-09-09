# Install python3.6
```sh
$ sudo yum -y install python36u python36u-devel python36u-libs python36u-pip python36u-setuptools
```

# Install virtualenv
```sh
$ sudo pip3.6 install virtualenv virtualenvwrapper
```

# Setting virtualenv
```sh
$ vim ~/.bashrc
```
```sh
# virtualenv
export WORKON_HOME=~/Env
export VIRTUALENVWRAPPER_PYTHON=/bin/python3.6
source /usr/bin/virtualenvwrapper.sh
```
```sh
$ source ~/.bashrc
```

# Make virtualenv
```sh
$ cd ~
$ mkvirtualenv myproject
$ deactivate
```
