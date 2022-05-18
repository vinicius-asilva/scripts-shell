/bin/bash
curl --unix-socket /var/run/docker.sock http://127.0.0.1/containers/json >> /home/containersAtivos.txt
