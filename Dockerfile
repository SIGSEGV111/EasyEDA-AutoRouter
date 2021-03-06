FROM debian:9
RUN apt-get update && apt-get install -y openjdk-8-jre p7zip-full wget

RUN useradd -r -m router -d /router
USER router

COPY 'EasyEDA-Router.7z' '/tmp/EasyEDA-Router.7z'
RUN cd /router && nice 7z x '/tmp/EasyEDA-Router.7z'

RUN chmod +x "/router/lin64.sh"
CMD cd /router && nice -n20 ./lin64.sh
