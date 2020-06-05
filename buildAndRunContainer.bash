docker stop demo
docker build -t bash-docker-demo .
docker run -d -p 1000:3000 --name demo --rm bash-docker-demo

docker exec demo node makeNewFile.js
