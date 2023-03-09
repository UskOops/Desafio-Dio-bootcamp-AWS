

# Define uma lista de usuários e senhas
USERS=(
  guest10:Senha123
  guest11:Senha123
  guest12:Senha123
  guest13:Senha123
)

# Define uma função para criar e configurar cada usuário
function create_user {
  local username=$1
  local password=$2
  
  # Verifica se o usuário já existe
  if id "$username" >/dev/null 2>&1; then
    echo "Usuário $username já existe. Pulando..."
    return
  fi
  
  # Cria o usuário com a senha definida
  useradd "$username" -c "Usuário convidado" -s /bin/bash -m -p "$(openssl passwd -crypt "$password")"
  
  # Define a senha como expirada, forçando o usuário a alterá-la no primeiro login
  chage -d 0 "$username"
  
  echo "Usuário $username criado com sucesso."
}

# Cria cada usuário da lista
for user in "${USERS[@]}"; do
  create_user "${user%:*}" "${user#*:}"
done

echo "Usuários criados com sucesso!"
