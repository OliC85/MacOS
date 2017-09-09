# Install Nginx
```sh
$ sudo yum -y install nginx
```

# Setting Nginx config
```sh
$ sudo vim /etc/nginx/conf.d/myproject.conf
```
## myproject.conf
```sh
server {
    listen 80;
    server_name SERVER_IP / SERVER_DOMAIN;
 
    location / {
        include uwsgi_params;
        uwsgi_pass unix:/run/uwsgi/myproject.sock;
    }
}
```
## Test Nginx
```sh
$ sudo nginx -t
```

# Start Nginx service
```sh
$ sudo systemctl enable nginx
$ sudo systemctl start nginx
```

# Start uWSGI service
```sh
$ sudo systemctl enable uwsgi
$ sudo systemctl start uwsgi
```
