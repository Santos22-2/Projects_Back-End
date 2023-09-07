### Projeto de Gerenciamento de Tarefas (CRUD) em PHP e jQuery

<div>
  <a href="https://github.com/Projects_Back-End/CRUD_XNEO">
  <img height="180em" src="https://github-readme-stats.vercel.app/api/top-langs/?username=Santos22-2&layout=compact"/>  
</div>

Este é um projeto de aplicação web simples desenvolvido em PHP e jQuery, projetado para simplificar o gerenciamento de tarefas e compromissos. Com este sistema, os usuários podem realizar as seguintes ações:
Funcionalidades Principais

## Funcionalidades Principais

🗝️ **Cadastro e Autenticação de Usuários**: Os usuários podem se cadastrar fornecendo um email e senha. Após o cadastro, podem fazer login no sistema para acessar suas tarefas pessoais.

📝 **Gerenciamento de Tarefas**: Os usuários podem adicionar, visualizar, editar e excluir tarefas e compromissos em um painel intuitivo.

🔖 **Detalhes das Tarefas**: Cada tarefa pode incluir as seguintes informações:
    Nome da tarefa
    Descrição detalhada
    Data de início e data de término

🎯 **Edição e Exclusão de Tarefas**: Os usuários têm a capacidade de editar informações de tarefas existentes ou remover tarefas quando necessário.

📀 **Armazenamento em Banco de Dados**: Todas as informações de tarefas e detalhes de usuário são armazenadas em um banco de dados, garantindo a persistência dos dados.

## Interface de Usuário Intuitiva

O sistema apresenta uma interface de usuário amigável, com duas opções visíveis no canto superior esquerdo da página: "Login" para usuários existentes e "Cadastro" para novos usuários. O design limpo e intuitivo facilita a navegação e utilização da aplicação.

==================================================================================================================

### Configuração do Ambiente para Executar o Projeto

Para executar este projeto, você precisará configurar corretamente o ambiente, o que inclui a instalação do servidor Apache (como o Wamp Server) e a configuração do VirtualHost. Siga os passos abaixo:

**Instale o Wamp Server**:
Certifique-se de ter o Wamp Server instalado em seu sistema. Você pode baixá-lo em https://www.wampserver.com/.

**Inicie o Wamp Server**:
Após a instalação, inicie o Wamp Server a partir do ícone na barra de tarefas ou no menu Iniciar.

**Configure o Apache**:
O Wamp Server inclui o servidor Apache. Certifique-se de que o Apache esteja em execução.

**Configure o Document Root**:
Abra o diretório do seu projeto e coloque todos os arquivos na pasta que será o Document Root do Apache. Por padrão, a pasta Document Root é "www" no diretório do Wamp Server, por exemplo: C:\wamp64\www\seuprojeto.

**Edite o Arquivo httpd-vhosts.conf**:
    Abra o arquivo httpd-vhosts.conf para configurar o VirtualHost. Este arquivo geralmente está localizado em C:\wamp64\bin\apache\apache2.4.54.2\conf\original\extra. Adicione um bloco de configuração para o seu projeto, especificando o diretório do Document Root e um nome de domínio (URL) para o projeto. Aqui está um exemplo de configuração:
    
    <VirtualHost *:80>
    DocumentRoot "C:/wamp64/www/seuprojeto"
    ServerName seuprojeto.local
    </VirtualHost>  

Certifique-se de substituir **seuprojeto** pelo nome do seu projeto e escolher um nome de domínio significativo.

**Edite o Arquivo hosts**:
Abra o arquivo hosts em um editor de texto com privilégios de administrador. Você pode encontrá-lo em **C:\Windows\System32\drivers\etc\hosts**. Adicione uma entrada para o nome de domínio do seu projeto:
      
    127.0.0.1 seuprojeto.local

**Reinicie o Wamp Server**:
Após fazer essas configurações, reinicie o Wamp Server para aplicar as alterações.

**Acesse o Projeto**:
Abra um navegador da web e acesse o projeto digitando o nome de domínio configurado no VirtualHost, por exemplo, **http://seuprojeto.local**.

Agora, o servidor Apache deve estar configurado para servir o seu projeto localmente. Certifique-se de que o jQuery e outros recursos do seu projeto funcionem corretamente no ambiente local.

Lembre-se de que essas são instruções gerais e podem variar um pouco dependendo da versão do Wamp Server ou do sistema operacional. Certifique-se de consultar a documentação específica do Wamp Server ou do Apache para obter informações detalhadas sobre a configuração.

