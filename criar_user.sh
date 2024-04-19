#!/bin/bash

echo "Criando usuários do sistema...."

useradd quest10 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd quest10 -e

useradd quest11 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd quest11 -e

useradd quest12 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd quest12 -e

useradd quest13 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd quest13 -e


echo "Finalizado!!!"
