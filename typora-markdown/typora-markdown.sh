#!/bin/bash
echo "$(pwd) is mapped to /mnt";
USER_UID=$(id -u);
if [ ${USER_UID} != 0 ]; 
then
    docker container run -ti --rm \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v "$(pwd)":/mnt/ \
           -w /mnt/ \
           --volume=/run/user/$USER_UID/pulse:/run/pulse:ro \
           typora-markdown typora "$@"
else
    docker container run -ti --rm \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v "$(pwd)":/mnt/ \
           -w /mnt/ \
           --volume=/run/user/$USER_UID/pulse:/run/pulse:ro \
           typora-markdown typora --no-sandbox "$@"
fi
