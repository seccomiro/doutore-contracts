# Doutore Contracts

Aplicação-exemplo que simula a criação de contratos entre Clínicas e Médicos.

## Tecnologias Utilizadas

- Ruby 2.7.0
- gem font-awesome-sass
- gem simple_form
- gem wkhtmltopdf-binary (wkhtmltopdf é aplicação CLI que usa Qt WebKit para renderizar PDf com base em HTML)
- gem pdfkit (gem que envolve o wkhtmltopdf em Ruby)
- Bootstrap e jQuery (via webpack)
- Rails Action Text com Trix para a geração de texto rico no conteúdo

## Instruções de Instalação e Execução

Clonar o projeto:

```bash
git clone git@github.com:seccomiro/doutore-contracts.git
cd doutore-contracts
git checkout dev # ou master se já estiver com merge feito
```

Atualizar dependências pelo Yarn:

```bash
# Precisa do Yarn instalado
yarn install
```

Executar migrações (SQLite):

```bash
rails db:create
rails db:migrate
```

Observação. Para ocultar alertas de deprecated e experimental, você pode executar os comandos com a seguinte variável de ambiente:

```bash
RUBYOPT='-W:no-deprecated -W:no-experimental' rails db:create
```

Como a aplicação utiliza Rails 6, que utiliza webpacker e Yarn para gerências de dependências de frontend, é preciso mater o servidor de desenvolvimento em execução:

```bash
bin/webpack-dev-server
```

Execute o servidor:

```bash
rails server
```

Acesse: http://localhost:3000