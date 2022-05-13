#!/bin/bash
PASSWORD='P@ssw0rd' # Digite a senha de acesso root aos servidores
SERVERS=(192.168.122.209 192.168.122.53) # Informe os ips dos servidores a serem liberados a conexão ssh
RSAKEY='ssh-rsa ' # Digite entre aspas a chave rsa a ser adicionada aos servidores

for server in "${SERVERS[@]}"
do
	echo "Habilitando acesso ssh ao servidor $server"
	sshpass -p"$PASSWORD" ssh "root@$server" "echo $RSAKEY >> /root/.ssh/authorized_keys"
	if [[ $? == 0 ]] ; then echo "Chave adicionada ao servidor $server"; else echo -e "\tErro ao adicionar chave ao servidor $server"; fi
done
