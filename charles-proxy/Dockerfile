FROM ubuntu
COPY ./init.sh /init.sh 
RUN chmod +x /init.sh
RUN /init.sh ${myuid} ${mygid} ${myuser} ${myhome}
USER ${myuser}
ENV HOME ${myhome}
RUN apt-get update && apt-get install -y wget gnupg2
RUN wget -q -O - https://www.charlesproxy.com/packages/apt/PublicKey > /tmp/aptkey.txt
RUN apt-key add < /tmp/aptkey.txt
RUN echo deb https://www.charlesproxy.com/packages/apt/ charles-proxy main > /etc/apt/sources.list.d/charles.list
RUN apt-get update && apt-get install -y charles-proxy
RUN apt-get install -y libxext6 libxrender1 libxtst6 libxi6 libgtk2.0-0 libidn11 libglu1-mesa 
