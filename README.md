# Challenge Umanni

Este é um projeto de blog desenvolvido com Ruby on Rails . O sistema permite que usuários criem conta, façam login, publiquem posts e comentem em posts existentes, com atualizações em tempo real.
Funcionalidades
Visitantes

 Visualizar todos os posts
 Visualizar comentários
 Registrar uma nova conta
 Fazer login

Usuários Autenticados

 Criar novos posts
 Editar e excluir seus próprios posts
 Comentar em posts
 Ver atualizações de comentários em tempo real

Requisitos

Ruby 3.0.0 ou superior
Rails 7.0.0 ou superior
PostgreSQL
Node.js 14+
Yarn
Redis (para Action Cable)

Tecnologias Utilizadas

Ruby on Rails 7
PostgreSQL (banco de dados)
Tailwind CSS (framework de estilização)
Devise (autenticação de usuários)
Action Cable (funcionalidades em tempo real)
RSpec (framework de testes)

Configuração do Ambiente

Clone o repositório

bashCopygit clone https://github.com/seu-usuario/blog-rails.git
cd blog-rails

Instale as dependências

bashCopybundle install
yarn install

Configure o banco de dados

bashCopy# Copie e configure o arquivo database.yml
cp config/database.yml.example config/database.yml

# Crie e configure o banco de dados
rails db:create
rails db:migrate

Configure as variáveis de ambiente

bashCopycp .env.example .env
Configure as variáveis no arquivo .env conforme necessário

Inicie o servidor de desenvolvimento


Acesse a aplicação em http://localhost:3000


# Testes
Executando os Testes
bashCopy# Prepare o banco de dados de teste
rails db:test:prepare

# Execute todos os testes
bundle exec rspec

# Execute testes específicos
bundle exec rspec spec/models/post_spec.rb