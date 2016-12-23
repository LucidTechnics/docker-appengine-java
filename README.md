# Docker Example for Google App Engine Standard Environment


## Build 

docker build -t tagname/appengine-java:latest .

## Run

docker run -v $(pwd):/app -p 8080:8080 -p 222:22 tagname/appengine-java:latest

# Docker Start script
The docker_start.sh is the entrypoint and has the script to run appengine, change parameters as necessary.  Note that the previous docker run command mounts the current directory and script looks for the war directory in the current path. DO NOT CHANGE THE -a 0.0.0.0 argument is required to properly bind so hostnname and localhost access is allowed

Once started go to localhost:8080 in the browser of the host machine.