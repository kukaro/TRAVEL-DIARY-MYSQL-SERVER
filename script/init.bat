::run docker
docker build -t travle-diary-mysql-server-project ../project/
docker-compose -f ../project/docker-compose.yml up -d
