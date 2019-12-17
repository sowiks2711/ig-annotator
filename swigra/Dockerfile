FROM ubuntu:18.04
RUN  apt-get update \
  && apt-get install -y software-properties-common \
  && apt-get install -y wget \
  && apt-get install -y unzip \
  && apt-get install -y gnupg \
  && apt-get install -y python \
  && rm -rf /var/lib/apt/lists/*
RUN wget -qO /dev/stdout http://download.sgjp.pl/apt/sgjp.gpg.key | apt-key add /dev/stdin && \
        apt-add-repository http://download.sgjp.pl/apt/ubuntu                   && \
    apt update                                                              && \
    apt install -y morfeusz2                                                   && \
    apt-get install -y swi-prolog-nox=7.6.4+dfsg-1build1                       && \
    apt-get install -y swi-prolog-x=7.6.4+dfsg-1build1                         && \
    apt-get install -y swi-prolog=7.6.4+dfsg-1build1                           && \
        apt-get install -y libbsd-resource-perl                                    && \
        apt-get install -y libfile-slurp-perl                                      && \
        apt-get install -y libxml-libxml-perl                             
RUN wget "https://clarin-pl.eu/dspace/bitstream/handle/11321/258/swigra2-160501.zip"                                 && \
    unzip swigra2-160501.zip                                                                                         && \
    rm -rf parser                                                                                                && \
    mv disambiguator-pcfg disambiguator-maxent                                                                       && \
    wget -O swigra_ipi.zip "http://zil.ipipan.waw.pl/%C5%9Awigra?action=AttachFile&do=get&target=swigra_current.zip" && \
    unzip swigra_ipi.zip
VOLUME /parser/httpd
WORKDIR parser
EXPOSE 3333 3333
CMD ./swigra -w