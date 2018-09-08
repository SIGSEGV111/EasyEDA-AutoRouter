FROM debian:9
RUN apt-get update && apt-get install -y openjdk-8-jre p7zip-full wget

RUN wget 'https://image.easyeda.com/files/EasyEDA-Router-latest.7z' -O '/EasyEDA-Router.7z'
RUN cd /tmp && 7z x '/EasyEDA-Router.7z' && mv 'EasyEDA'* '/router' && rm '/EasyEDA-Router.7z'

RUN chmod +x "/router/lin64.sh"
RUN useradd -r -m router
RUN chown -R router /router
USER router
CMD cd /router && nice -n20 ./lin64.sh
