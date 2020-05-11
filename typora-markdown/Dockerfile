FROM ubuntu
COPY ./init.sh /init.sh 
RUN chmod +x /init.sh
RUN /init.sh ${myuid} ${mygid} ${myuser} ${myhome}
USER ${myuser}
ENV HOME ${myhome}
RUN apt-get update && apt-get install -y wget gnupg2 software-properties-common
RUN wget -qO - https://typora.io/linux/public-key.asc > /tmp/aptkey.txt
RUN apt-key add < /tmp/aptkey.txt
RUN add-apt-repository 'deb https://typora.io/linux ./'
RUN apt-get update && apt-get install -y typora
RUN apt-get install -y libnss3 libgdk-pixbuf2.0-0 libgtk-3.0 libx11-xcb1 libxss1 libasound2
