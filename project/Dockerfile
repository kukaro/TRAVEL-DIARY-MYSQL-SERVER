FROM mysql:5.7
MAINTAINER kukaro <justkukaro@naver.com>

ADD ./sql /docker-entrypoint-initdb.d

EXPOSE 3306

CMD ["mysqld"]