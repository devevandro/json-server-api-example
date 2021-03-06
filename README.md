# json-server-api-example
# Um pequeno exemplo de criação de uma API com json-server e deploy no Heroku

# json-server:
- json-server: biblioteca capaz de criar uma API Fake em 30 segundos
e sem precisar escrever nenhuma linha de código.

# instalação json-server:
```
yarn global add json-server
```
```
yarn add json-server
```

# db.json:
- Crie um arquivo de nome db.json
```js
{
  "users": [
    {
      "name": "Evandro Carvalho Ferreira",
      "email": "evandro@mail.com",
      "id": "100000"
    }
  ]
}
```
- Somente com esses dados é possivel realidar um CRUD completo:
  - GET: /api/users;
  - GET: /api/users/100000;
  - POST: /api/users;
  - PUT: /api/users/1;
  - PATCH: /api/users/1;
  - DELETE: /api/users/1;

# index.js:
- Crie um arquivo index.js para startar o projeto (remoto ou online):
```js
const jsonServer = require('json-server');
const server = jsonServer.create();
const router = jsonServer.router('db.json');
const middleware = jsonServer.defaults();

server.use(middleware);
// é possível adicionar mais rotas
server.use('/api', router);

const port = process.env.PORT || 6500;

server.listen(port, () => {
  console.log(`JSON Server is running on ${port}`);
});
````

# deploy no Heroku:
- Após realizado o push siga os passos abaixos
```
heroku login
```
```
heroku git:remote -a name-you-created-on-heroku
```
```
git push heroku main
```
