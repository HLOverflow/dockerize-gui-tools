FROM ubuntu
ARG myuid
ARG mygid
ARG myuser
ARG myhome
RUN apt-get update && apt-get install -y firefox
COPY ./init.sh /init.sh 
RUN chmod +x /init.sh
RUN /init.sh ${myuid} ${mygid} ${myuser} ${myhome}
USER ${myuser}
ENV HOME ${myhome}
CMD /usr/bin/firefox
