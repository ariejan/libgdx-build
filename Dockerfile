FROM cogniteev/oracle-java:java7
MAINTAINER Ariejan de Vroom <ariejan@devroom.io>

# Install git
RUN apt-get update -y && apt-get install -y git-core wget 

# Download packr openjdk images
RUN cd /root && wget https://bitbucket.org/alexkasko/openjdk-unofficial-builds/downloads/openjdk-1.7.0-u80-unofficial-macosx-x86_64-image.zip
RUN cd /root && wget https://bitbucket.org/alexkasko/openjdk-unofficial-builds/downloads/openjdk-1.7.0-u80-unofficial-windows-amd64-image.zip
RUN cd /root && wget https://bitbucket.org/alexkasko/openjdk-unofficial-builds/downloads/openjdk-1.7.0-u80-unofficial-linux-amd64-image.zip

# Download packr.jar
RUN cd /root && wget http://libgdx.badlogicgames.com/packr/packr.jar
