# clone

    git clone https://github.com/saada/docker-lumen.git
    cd docker-lumen


# install lumen bin

    composer global require "laravel/lumen-installer=~1.0"


# create lumen app inside images directory

    cd images/php
    lumen new app
    cd ..

# tweak configuration

    vim docker-compose.yml

# kill all docker containers and images because fuck you that's why

    docker rm -f $(docker ps -a -q)
    docker rmi -f $(docker images -q)


# set up environment

    docker-machine create -d virtualbox default
    docker-machine start
    eval $(docker-machine env)

# build and run

    docker-compose up --build -d

#W. docker ip

    docker-machine ip

# docker stop

#    docker-compose stop
