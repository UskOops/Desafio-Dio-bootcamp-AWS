

# Variáveis para armazenar senhas dos usuários
SENHA=$(openssl passwd -crypt Senha123)

# Verifica se os diretórios já existem e, caso contrário, os cria
if [ ! -d "/publico" ]; then
    mkdir /publico
    echo "Diretório /publico criado"
fi

if [ ! -d "/adm" ]; then
    mkdir /adm
    echo "Diretório /adm criado"
fi

if [ ! -d "/ven" ]; then
    mkdir /ven
    echo "Diretório /ven criado"
fi

if [ ! -d "/sec" ]; then
    mkdir /sec
    echo "Diretório /sec criado"
fi

# Verifica se os grupos já existem e, caso contrário, os cria
if [ ! $(getent group GRP_ADM) ]; then
    groupadd GRP_ADM
    echo "Grupo GRP_ADM criado"
fi

if [ ! $(getent group GRP_VEN) ]; then
    groupadd GRP_VEN
    echo "Grupo GRP_VEN criado"
fi

if [ ! $(getent group GRP_SEC) ]; then
    groupadd GRP_SEC
    echo "Grupo GRP_SEC criado"
fi

# Cria os usuários especificando as senhas e grupos correspondentes
useradd carlos -m -s /bin/bash -p $SENHA -G GRP_ADM
useradd maria -m -s /bin/bash -p $SENHA -G GRP_ADM
useradd joao -m -s /bin/bash -p $SENHA -G GRP_ADM

useradd debora -m -s /bin/bash -p $SENHA -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $SENHA -G GRP_VEN
useradd roberto -m -s /bin/bash -p $SENHA -G GRP_VEN

useradd josefina -m -s /bin/bash -p $SENHA -G GRP_SEC
useradd amanda -m -s /bin/bash -p $SENHA -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $SENHA -G GRP_SEC

# Especifica as permissões dos diretórios criados
chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

echo "Usuários, grupos e diretórios criados com sucesso!"
