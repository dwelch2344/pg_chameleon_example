FROM mysql:latest
COPY ./etc_mysql_mysql.conf.d_mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
RUN service mysql restart

CMD service mysql start 