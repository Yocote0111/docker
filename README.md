# commands
```
docker images                       # show all images
docker search [PATTERN]             # search images in docker hub
docker ps                           # show status of containers
docker run [OPTS] [IMAGE] [COMMAND] # create and run a container from the image
docker exec [CONTAINER]             # exec command in the container
docker stop [CONTAINER]             # stop the running container
docker start [CONTAINER]            # run the existing stopped container
docker rm [CONTAINER]               # remove the stopped container
docker rmi [IMAGE]                  # remove the unused image
docker [PATH] [CONTAINER]:[PATH]    # copy file between host and container 
```

## docker run
```
docker run
 --name [CONTAINER_NAME]            # specify container name
 -d                                 #
 -v [HOST_PATH]:[CONTAINER_PATH]    # share directory
 -p [HOST_PORT]:[CONTAINER_PORT]    # port forwarding
 -e [ENV_KEY]=[ENV_VALUE]           # set environment variable
 [IMAGE]
 [COMMAND]
```

## docker exec
```
docker exec -it [CONTAINER_NAME] /bin/bash  # "/bin/bash" means connect by CUI
```

## docker ps
```
docker ps -a # --all (Even if not running)
docker ps -q # --quiet (only show ID)
```

## docker stop | rm
```
docker stop $(docker ps -aq) # stop all container
docker rm $(docker ps -aq)   # remove all container
```

# other

[Key Words]
docker, container, image, volume

[References]
<https://hub.docker.com/r/garethflowers/svn-server/>
<http://www.thekyo.jp/manual/subversion/svn.serverconfig.svnserve.html>
