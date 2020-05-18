#!/bin/bash

docker run -d  \
 -p 8888:8888 \
 -e GRANT_SUDO=yes \
 -e NB_UID=$(id $USER -u) \
 -e NB_GID=$(id $USER -g) \
 --user root \
 --name jupyter \
 -v "/${PWD}/work":/home/jovyan/work \
 jupyter/scipy-notebook start-notebook.sh --NotebookApp.password='sha1:c2fd48f851d6:7b12ad5a3659321de782819591bae99fba498a77'


# https://qiita.com/kshigeru/items/ea174d6bcacc474f2a51