FROM sillelien/base-java
RUN apk -U add git wget
RUN wget "https://get.docker.com/builds/Linux/x86_64/docker-latest" -O /usr/local/bin/docker
RUN chmod 755 /usr/local/bin/docker
RUN wget "http://download.robovm.org/robovm-1.4.0.tar.gz"
RUN tar xvfz robovm-1.4.0.tar.gz && mv robovm-1.4.0 /usr/local/robovm
COPY robovm.sh /usr/local/robovm/bin/robovm
RUN chmod 755 /usr/local/robovm/bin/robovm
#RUN /usr/local/robovm/bin/robovm  --help
RUN apk -U add openssl
CMD /usr/local/bin/docker ps