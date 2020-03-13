#!/bin/bash
docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v $(pwd):/tmp/ \
       -w /tmp/ \
       --volume=/run/user/$USER_UID/pulse:/run/pulse:ro \
       charles-proxy charles "$@"
