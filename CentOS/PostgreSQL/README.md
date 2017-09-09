# [PostgreSQL](https://www.postgresql.org/download/linux/redhat/)
# Install postgresql
```sh
$ sudo yum -y install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm
$ sudo yum -y install gcc postgresql96 postgresql96-server postgresql96-devel
$ sudo yum -y install postgresql96-contrib epel-release postgis2_96
$ sudo /usr/pgsql-9.6/bin/postgresql96-setup initdb
$ sudo systemctl enable postgresql-9.6
$ sudo systemctl start postgresql-9.6
$ sudo su - postgres
> psql
```

# psql console
```sh
- ALTER USER postgres WITH PASSWORD 'MY_COMPLEX_PASSWORD';
- CREATE DATABASE mydb WITH OWNER postgres;
- ALTER ROLE postgres SET client_encoding TO 'utf8';
- ALTER ROLE postgres SET default_transaction_isolation TO 'read committed';
- ALTER ROLE postgres SET timezone TO 'Asia/Seoul';
- GRANT ALL PRIVILEGES ON DATABASE mydb TO postgres;
- \l
- \q
> exit
```

# Edit pg_hba.conf
```sh
$ sudo vim /var/lib/pgsql/9.6/data/pg_hba.conf
```
```sh
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     md5
# IPv4 local connections:
host    all             all             127.0.0.1/32            md5
# IPv6 local connections:
host    all             all             ::1/128                 md5
```
```sh
$ sudo systemctl restart postgresql-9.6
```
