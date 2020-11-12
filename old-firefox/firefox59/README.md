# How to build
```
docker image build -t firefox:59 .
```

# How to run

With no files sharing from host
```
docker container run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix firefox:59
```
