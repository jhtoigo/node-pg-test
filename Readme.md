# Node.js para testes de conexão com postgresql

Esta aplicação roda apenas um teste de conexão com o banco de dados Postgresql


Como executar o teste.

```sh
# Faz o build da imagem
$ docker build -t pgtest .
# Executa o container
$ docker run --env-file=.env -p 3001:3001 --network pgadmin_default pgtest
```

Ao acessar: http://localhost:3001

Se obtem o retorno abaixo em caso de sucesso:

#### Connected to database: postgres on server: 10.0.0.2 at Tue Aug 13 2024 19:52:42 GMT+0000 (Coordinated Universal Time)
