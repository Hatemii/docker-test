There are two branches
 - docker-without-container (main)
 - docker-with-container

# DOCKER WITHOUT CONTAINER SETUP 
1. Build project (sqlite as database)
- docker build -t rails-hello .


2. Start server without container
 - docker run -p 3000:3000 rails-hello
 - docker ps => docker exec -it "container id" bash => access project from container


# DOCKER WITH CONTAINER SETUP
1. Build project (pg as database)
 - docker compose build

2. Start Server (containers)
 - docker compose up
 - docker ps => docker exec -it "container id" bash => access project from container
