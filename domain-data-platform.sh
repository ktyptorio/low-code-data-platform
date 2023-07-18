#!/bin/bash

check_library()
{  
  libraries=("python3" "python3-dev" "git" "curl")
  not_installed=()

  for library in "${libraries[@]}"; do
    if ! command -v $library &> /dev/null; then
        not_installed+=("$library")
    fi
  done

  if [ ${#not_installed[@]} -gt 0 ]; then
    apt-get install -y "${not_installed[@]}"
  fi
}

Help()
{
   echo -e "Syntax: $0"
   echo -e "options:"
   echo -e "   --up     Run docker compose up in detached mode and Install jupyterhub"
   echo -e "   --down   Drop docker compose and stop jupyterhub service."
   echo -e ""
}

jupyterhubup()
{
  service_name="jupyterhub"
  
  if systemctl list-unit-files | grep -q "^$service_name.service"; then
    echo "Layanan $service_name sudah ada dalam systemd."
    service_status=$(systemctl is-active $service_name.service)
    if [ "$service_status" = "active" ]; then
        echo "Layanan $service_name sedang aktif."
    elif [ "$service_status" = "inactive" ]; then
        sudo service $service_name start
    else
        echo "Gagal memeriksa status layanan $service_name."
    fi
  else
    echo "Layanan $service_name belum ada dalam systemd."
    curl -L https://tljh.jupyter.org/bootstrap.py | sudo -E python3 - --admin admin
  fi
}

dockerup()
{
  check_library

  dot_env=".env"
  source $dot_env
  metabase_driver="plugins/clickhouse.metabase-driver.jar"

  if test -f $metabase_driver; then
    echo -e "$metabase_driver is already exist"
  else
    DOWNLOAD_URL=https://github.com/ClickHouse/metabase-clickhouse-driver/releases/download/1.1.7/clickhouse.metabase-driver.jar
    curl -L -o $metabase_driver $DOWNLOAD_URL
  fi
  
  jupyterhubup
  docker compose up
}

dockerdown()
{
  sudo service jupyterhub stop
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