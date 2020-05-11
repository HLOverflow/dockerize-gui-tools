#!/bin/bash
echo "$(pwd) is mapped to /mnt"
if [ ${myuid} != 0 ]; 
then
    docker run -ti --rm \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $(pwd):/mnt/ \
           -w /mnt/ \
           --volume=/run/user/$USER_UID/pulse:/run/pulse:ro \
           typora-markdown typora "$@"
else
    docker run -ti --rm \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $(pwd):/mnt/ \
           -w /mnt/ \
           --volume=/run/user/$USER_UID/pulse:/run/pulse:ro \
           typora-markdown typora --no-sandbox "$@"
fi
