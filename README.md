# docker-inotify
inotify-tools inside alpine linux docker container

**Build**
 
 git clone https://github.com/metairie/docker-inotify.git
 cd docker-inotify
 docker build . -t docker-inotify

**Run**
 
docker run -v /tmp:/tmp -it docker-inotify:latest 

There is no entry point, a sh script watch.sh is in the example folder. 
