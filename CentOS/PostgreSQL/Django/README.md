# Install psycopg2
```sh
$ workon myproject
$ pip install psycopg2
```

# Setting PostgreSQL
```sh
$ vim ~/project/myproject/myproject/settings.py
```
## settings.py
```sh
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'mydb',
        'USER': 'postgres',
        'PASSWORD': 'MY_COMPLEX_PASSWORD',
        'HOST': 'localhost',
        'POST': '',
    }
}
```

# Migration
```sh
$ cd ~/project/myproject
$ ./manage.py makemigrations
$ ./manage.py migrate
```

# Deactivate virtualenv
```sh
$ deactivate
```
