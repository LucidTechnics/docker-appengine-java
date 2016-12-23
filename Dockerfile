# Docker: Google App Engine + Open JDK 7
FROM alpine:3.4
MAINTAINER David Hodge <david.hodge@lucidtechnics.com>

# Initial Setup
 RUN   apk update \                                                                                                                                                                                                                        
  &&   apk add --no-cache openjdk7 bash ca-certificates wget unzip \
  &&   update-ca-certificates 

ENV JAVA_HOME=/usr/lib/jvm/default-jvm

# Google App Engine

# Download Google App Engine SDK for Java
RUN wget -O /appengine.zip https://storage.googleapis.com/appengine-sdks/featured/appengine-java-sdk-1.9.48.zip

# Extract it
RUN unzip /appengine.zip -d /appengine

ENV APP_ENGINE_SDK /appengine/appengine-java-sdk-1.9.48

ENV PATH=$PATH:/appengine/appengine-java-sdk-1.9.48/bin:${JAVA_HOME}/bin

# Start
WORKDIR "/app"
VOLUME ["/app"]
EXPOSE 22 8080

CMD ["/usr/bin/java", "-version"]
ENTRYPOINT "./docker_start.sh"

