#!/bin/bash

echo " Autor : Luciano Aguiar Dos santos "
echo ""
date
echo " Criando Estrutura da Empresa Contoso "
echo""
echo "======== Criando os diretórios========"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo""
echo " Criando grupos de usuários "
echo""
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo""
echo " Criando usuários "
echo""
useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM 
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
echo""
echo " Adicionando permissão aos diretórios "
echo""
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo""
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo""
echo "========== procedimento finalizado =============="








