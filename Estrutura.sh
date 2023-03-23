#!/bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."
groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "Criando usuários..."
useradd carlos -c "Carlos da Silva Junior" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_adm
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_adm
useradd joao -c "Joao da Silva Junior" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_adm

useradd debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_ven
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_ven
useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_ven

useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_sec
useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_sec
useradd rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) #-G grp_sec

echo "Adicionando os usuários aos grupos..."
adduser carlos grp_adm
adduser maria grp_adm
adduser joao grp_adm

adduser debora grp_ven
adduser sebastiana grp_ven
adduser roberto grp_ven

adduser josefina grp_sec
adduser amanda grp_sec
adduser rogerio grp_sec

echo "Especificando permissões dos diretórios..."
chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim da execução..."