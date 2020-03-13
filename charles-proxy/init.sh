#!/bin/bash
myuid=$1
mygid=$2
myuser=$3
myhome=$4
if [ ${myuid} != 0 ]; 
then
    export uid=${myuid} gid=${mygid} && \
    mkdir -p /home/${myuser} && \
    echo "${myuser}:x:${uid}:${gid}:${myuser},,,:${myhome}:/bin/bash" >> /etc/passwd && \
    echo "${myuser}:x:${uid}:" >> /etc/group && \
    echo "${myuser} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${myuser} && \
    chmod 0440 /etc/sudoers.d/${myuser} && \
    chown ${uid}:${gid} -R ${myhome}
else
    echo "already root user";
fi
