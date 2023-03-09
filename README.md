# Desafio-Dio-bootcamp-AWS

<h1>Melhorias aplicadas na criação do usuário<h1>

1- Foi criada uma lista de usuários e senhas para facilitar a criação dos usuários. Dessa forma, é possível adicionar ou remover usuários da lista facilmente.

2- Foi criada uma função create_user para encapsular a lógica de criação e configuração de cada usuário. Isso torna o código mais modular e mais fácil de entender.

3- Foi adicionada uma verificação para verificar se o usuário já existe antes de criá-lo. Isso evita erros caso o script seja executado novamente e tentar criar um usuário que já existe.

4- Foi adicionada uma configuração para definir a senha como expirada após a criação do usuário. Isso força o usuário a alterar a senha no primeiro login, melhorando a segurança do sistema.

5- Foi adicionada uma mensagem de sucesso para indicar que os usuários foram criados com sucesso.


----------------------------------------------------------------------------------------------------------------------------------------------

<h1>Melhorias aplicadas no armazenar dados<h1>

1- Incluir verificações para garantir que os diretórios e grupos de usuários não sejam criados novamente caso já existam no sistema.

2- Utilizar variáveis para armazenar informações repetitivas, como as senhas dos usuários.

3- Especificar as permissões dos diretórios criados, por exemplo, permitindo que os membros dos grupos correspondentes possam ler e escrever nesses diretórios.

4- Adicionar mensagens de erro e sucesso para informar o usuário sobre o resultado de cada etapa do processo de criação.