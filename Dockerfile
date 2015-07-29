FROM sillelien/jessy:master
RUN apt-get update && apt-get install -y build-essential gcc-multilib g++-multilib openjdk-7-jdk wget
RUN wget -qO- https://get.docker.com/ | sh
RUN wget "http://download.robovm.org/robovm-1.4.0.tar.gz"
RUN tar xvfz robovm-1.4.0.tar.gz && mv robovm-1.4.0 /usr/local/robovm

COPY build.sh /build.sh
RUN chmod 755 /build.sh
#RUN /build.sh
COPY robovm.sh /usr/local/robovm/bin/robovm
RUN chmod 755 /usr/local/robovm/bin/robovm


