FROM theultimate/mediabase
MAINTAINER Maikel Dollé <maikel@itmagix.nl>

RUN git clone --depth 1 https://github.com/evilhero/mylar.git /mylar

#ADD ./config.ini /mylar
ADD ./start.sh /start.sh

RUN chmod u+x  /start.sh

EXPOSE 8090

CMD ["./start.sh"]
