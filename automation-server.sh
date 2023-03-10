
# atualiza o servidor
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

# instala o Apache e o pacote unzip
echo "Instalando o Apache e o pacote unzip..."
apt-get install apache2 unzip -y

# verifica se o Apache está rodando
echo "Verificando se o Apache está rodando..."
if ! systemctl is-active apache2 > /dev/null; then
  # inicia o Apache se não estiver rodando
  echo "O Apache não está rodando. Iniciando o Apache..."
  systemctl start apache2
fi

# baixa e copia os arquivos da aplicação
echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/UskOops?tab=repositories
unzip main.zip
cd xxxxx-main # substituir xxxxx pelo nome do repositório
cp -R * /var/www/html/

# remove os arquivos temporários baixados
echo "Removendo os arquivos temporários..."
cd /tmp
rm xxxx-main.zip # substituir xxxx pelo nome do repositório

# reinicia o Apache
echo "Reiniciando o Apache..."
systemctl restart apache2

