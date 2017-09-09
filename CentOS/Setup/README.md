# Install vim & wget
```sh
$ sudo yum -y install vim wget
```

# Install epel-release
```sh
$ sudo yum -y install epel-release
```

# Install IUS
```sh
$ cd /usr/local/src
$ sudo wget http://dl.iuscommunity.org/pub/ius/stable/CentOS/7/x86_64/ius-release-1.0-13.ius.centos7.noarch.rpm
$ sudo rpm -Uvh ius-release*.rpm
```

# Install remi
```sh
$ sudo wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
$ sudo rpm -Uvh remi-release-7*.rpm
$ sudo rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
```

# Edit remi repository
```sh
$ sudo vim /etc/yum.repos.d/remi.repo
```
enable = 0 >  enable = 1

# Update
```sh
$ sudo yum -y update
$ sudo yum -y install yum-utils
$ sudo yum -y groupinstall development
```

# Set SFTP

## Edit selinux
```sh
$ sudo vim /etc/sysconfig/selinux
```
SELINUX=enforcing -> SELINUX=disabled
```sh
$ reboot
```

## set SFTP server
```sh
$ sudo vim /etc/ssh/sshd_config
```
```sh
#Subsystem sftp /usr/libexec/openssh/sftp-server
Subsystem sftp internal-sftp
```
```sh
Match Group sftp
        ChrootDirectory %h
        X11Forwarding no
        AllowTcpForwarding no
        ForceCommand internal-sftp
```
