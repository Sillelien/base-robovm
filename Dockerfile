FROM sillelien/base-java
COPY build.sh /build.sh
RUN chmod 755 /build.sh
RUN /build.sh
COPY robovm.sh /usr/local/robovm/bin/robovm
RUN chmod 755 /usr/local/robovm/bin/robovm
