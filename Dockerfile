FROM progrium/cedarish
MAINTAINER Jonathan Rudenberg <jonathan@titanous.com>

RUN apt-get update
RUN apt-get install -y libicu-dev

ADD ./runner/ /runner
ADD ./build/sdutil /bin/sdutil
ENTRYPOINT ["/runner/init"]
