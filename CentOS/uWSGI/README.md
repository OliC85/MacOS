# install uWSGI
```sh
$ sudo pip3.6 install uwsgi
```

# test uWSGI
```sh
$ uwsgi --http :8080 --home /home/centos/Env/myproject --chdir /home/centos/project/myproject -w myproject.wsgi
```

# setting uWSGI
```sh
$ sudo mkdir -p /etc/uwsgi/sites
$ cd /etc/uwsgi/sites
$ sudo vim myproject.ini
```
## myproject.ini
```sh
[uwsgi]
project = myproject
username = centos
base = /home/%(username)
 
chdir = %(base)/project/%(project)
home = %(base)/Env/%(project)
module = %(project).wsgi:application
 
master = true
processes = 5
  
uid = %(username)
socket = /run/uwsgi/%(project).sock
chown-socket = %(username):nginx
chmod-socket = 660
vacuum = true
   
logto = /var/log/uwsgi/%(project).log
```
## make log directory
```sh
$ sudo mkdir -p /var/log/uwsgi
```

# Create a Systemd Unit File for uWSGI
```sh
$ sudo vim /etc/systemd/system/uwsgi.service
```
## uwsgi.service
```sh
[Unit]
Description=uWSGI Emperor service
 
[Service]
ExecStartPre=/usr/bin/bash -c 'mkdir -p /run/uwsgi; chown centos:nginx /run/uwsgi'
ExecStart=/usr/bin/uwsgi --emperor /etc/uwsgi/sites
Restart=always
KillSignal=SIGQUIT
Type=notify
NotifyAccess=all
 
[Install]
WantedBy=multi-user.target
```
