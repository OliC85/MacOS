# Install Django
```sh
$ workon myproject
$ pip install django
$ mkdir ~/project
$ cd ~/project
$ django-admin startproject myproject
```
# Setting Django
```sh
$ vim ~/project/myproject/myproject/settings.py
```
## Edit ALLOWED_HOSTS
```sh
ALLOWED_HOSTS = ['your_server_domain_or_IP', 'second_domain_or_IP', . . .]
```
## Edit STATIC_ROOT
```sh
STATIC_ROOT = os.path.join(BASE_DIR, 'static/')
```

# Migration
```sh
$ cd ~/project/myproject
$ ./manage.py makemigrations
$ ./manage.py migrate
```

# Add admin
```sh
$ ./manage.py createsuperuser
```

# Collect static
```sh
$ ./manage.py collectstatic
```

# Deactivate virtualenv
```sh
$ deactivate
```
