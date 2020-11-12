# dockerize-gui-tools

Found a possibly better way to run GUI tools?
```
docker container run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix <IMAGENAME:TAG>
```
