FROM mysql:5.7
MAINTAINER kukaro <justkukaro@naver.com>

RUN apt-get update && apt-get -y install net-tools

ADD ./sql /docker-entrypoint-initdb.d

EXPOSE 3306

CMD ["mysqld"]