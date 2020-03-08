#!/bin/bash
docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       --volume=/run/user/$USER_UID/pulse:/run/pulse:ro \
       firefox "$@"
