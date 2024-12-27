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

cd blog-rails

Instale as dependências

bashCopybundle install
yarn install


Inicie o servidor de desenvolvimento


Acesse a aplicação em http://localhost:3000


# Testes

# Execute todos os testes
bundle exec rspec

# Execute testes específicos
bundle exec rspec spec/models/post_spec.rb
