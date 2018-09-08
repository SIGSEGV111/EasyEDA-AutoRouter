FROM debian:9
RUN apt-get update && apt-get install -y openjdk-8-jre p7zip-full wget

RUN wget https://image.easyeda.com/files/EasyEDA-Router-v0.7.7z -O /EasyEDA-Router.7z
RUN 7z x /EasyEDA-Router.7z && mv "EasyEDA Router v0.7" router

RUN chmod +x "/router/lin64.sh"
RUN useradd -r -m router
RUN chown -R router /router
USER router
CMD cd /router && ./lin64.sh
