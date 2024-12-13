#!/bin/bash

# 1. 
addgroup aluno
addgroup professor
addgroup gerente

# 2. 
mkdir -p /srv
chown root:gerente /srv
chmod u=rwx,g=rx,o=x /srv

# 3. 
mkdir -p /srv/alunos
mkdir -p /srv/professores
chown root:aluno /srv/alunos
chmod 770 /srv/alunos
chown root:professor /srv/professores
chmod 770 /srv/professores

# 5.
adduser bruno --ingroup professor --home /srv/professores/bruno --gecos "" --disabled-login

# 6.
usermod -aG gerente bruno

# 7.
adduser joao --ingroup aluno --home /srv/alunos/joao --gecos "" --disabled-login
adduser maria --ingroup aluno --home /srv/alunos/maria --gecos "" --disabled-login

# 8.
sudo usermod -e 2024-12-31 joao
sudo usermod -e 2024-12-31 maria
sudo chage -I 90 joao
sudo chage -I 90 maria
