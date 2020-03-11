# 環境構築
1. Dockerのインストール  
    https://www.docker.com/products/docker-desktop
2. 動作確認  
``` 
docker version
docker help
```
3. 環境設定  
    1. Proxy  
    
# コマンド

1. image 操作  
```
docker search [pattern]       # search image from DockerHub
docker pull [image:tag]       # pull image from DockerHub
docker images                 # list images on local
docker rmi [image...]         # remove image on local
```

2. container 操作  
```
docker run [opts] [image] [command] # create and run container
docker ps  [opts; -a -q]            # list containers
docker stop [container]             # stop container
docker start [CONTAINER]            # start existing container 
docker rm [container]               # remove the stopped container
docker exec [container]             # exec command
docker cp [path] [container:path]   # copy file between host and container 
```

3. cheet sheet  
```
docker exec -it [container] /bin/bash # connect termnical 
docker rm $(docker ps -aq)            # remove all container
docker stop $(docker ps -aq)          # stop all container
```

4. docker compose

5. docker run file  
 [./run-in-docker.sh]



# Reference
https://hub.docker.com/r/garethflowers/svn-server/
http://www.thekyo.jp/manual/subversion/svn.serverconfig.svnserve.html
