FROM ubuntu:trusty
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget gcc python build-essential

RUN wget https://downloads.sourceforge.net/project/quast/quast-4.6.3.tar.gz

RUN tar -xzf quast-4.6.3.tar.gz

RUN /quast-4.6.3/install.sh

ENV PATH="/quast-4.6.3/:${PATH}"
