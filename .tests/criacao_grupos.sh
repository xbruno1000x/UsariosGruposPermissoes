#!/bin/bash

grep -q 'aluno' /etc/group

if [[ $? -ne 0 ]]; then
	echo -e "\nERRO: Grupo 'aluno' nao inserido!"
	exit 1
fi

grep -q 'professor' /etc/group

if [[ $? -ne 0 ]]; then
	echo -e "\nERRO: Grupo 'professor' nao inserido!"
	exit 1
fi

grep -q 'gerente' /etc/group

if [[ $? -ne 0 ]]; then
	echo -e "\nERRO: Grupo 'gerente' nao inserido!"
	exit 1
fi

exit 0
