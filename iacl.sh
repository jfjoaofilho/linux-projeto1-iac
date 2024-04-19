#!/bin/bash

#Esse script é para  criação de diretórios, grupos e usuários, além das suas permissões

echo "Criando diretórios..."

mkdir /publico
echo "/publico"
mkdir /adm
echo "/adm"
mkdir /ven
echo "/ven"
mkdir /sec
echo "/sec"

echo "Criando grupos de usuários"

groupadd GRP_ADM
echo "GRP_ADM"
groupadd GRP_VEN
echo "GRP_VEN"
groupadd GRP_SEC
echo "GRP_SEC"

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd pedro -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM  #Criei como pedro pois, já tem um usuario -joao-

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "GRP_ADM:"
echo -e "carlos\nmaria\npedro

echo "GRP_VEN:"
echo -e "debora\nsebastiana\nroberto

echo "GRP_SEC:"
echo -e "josefina\namanda\nrogerio"

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."

