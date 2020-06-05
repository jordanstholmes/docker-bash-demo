# NOTE FOR INSTRUCTOR: In the demo, I first run the commands below in the terminal as though I'm coming up with the steps as I go.
# Then I create this file and show how I can run all those commands with a single command (running this file)

docker stop demo
docker build -t bash-docker-demo .
docker run -d -p 1000:3000 --name demo --rm bash-docker-demo

docker exec demo node makeNewFile.js
