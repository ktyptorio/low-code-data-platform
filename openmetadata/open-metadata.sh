#!/bin/bash

BASE_PATH=$PWD/docker-volume

Help()
{
   echo -e "Syntax: $0"
   echo -e "options:"
   echo -e "   --up     Run docker compose up in detached mode"
   echo -e "   --down   Drop docker compose"
   echo -e ""
}

create_directories() {

    if [[ ! -e $BASE_PATH/db-data ]]; then
        mkdir -p $BASE_PATH/db-data
    fi

    if [[ ! -e $BASE_PATH/es-data ]]; then
        mkdir -p $BASE_PATH/es-data
    fi

    if [[ ! -e $BASE_PATH/dag_config ]]; then
        mkdir -p $BASE_PATH/dag_config
    fi

    if [[ ! -e $BASE_PATH/dags ]]; then
        mkdir -p $BASE_PATH/dags
    fi

    if [[ ! -e $BASE_PATH/secrets ]]; then
        mkdir -p $BASE_PATH/secrets
    fi
}

dockerup()
{
  dot_env=".env"
  source $dot_env
  create_directories
  docker compose up
}

dockerdown()
{
  docker compose down
}

for argument in $@; do
  case $argument in
    --up )
      dockerup
      exit
      ;;
    --down)
      dockerdown
      exit
      ;;
    *)
      echo "$argument is unknown command."
      echo
      Help
      exit
      ;;
  esac
  shift
done