
# docker pull garethflowers/svn-server

# docker run -d \
#  --name [CONTAINER_NAME] \
#  -p 3960:3960 \
#  -v [PATH]:/var/opt/svn \
#  garethflowers/svn-server

# docker exec -it /bin/sh

# svnadmin create [REPO_NAME] # at /var/opt/svn

# cd [REPO_NAME]/conf

# vi svnserve.conf
# vi passwd

# svn co svn://[HOST]/[REPO_NAME]
# svn ci [TARGET] --username [USER] --password [PASSWORD]

[Key Words]
svnserve

[References]
https://hub.docker.com/r/garethflowers/svn-server/
http://www.thekyo.jp/manual/subversion/svn.serverconfig.svnserve.html
