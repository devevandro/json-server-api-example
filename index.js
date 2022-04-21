const jsonServer = require('json-server');
const server = jsonServer.create();
const router = jsonServer.router('db.json');
const middleware = jsonServer.defaults();

server.use(middleware);
server.use('/api', router);

const port = process.env.PORT || 6500;

server.listen(port, () => {
  console.log(`JSON Server is running on ${port}`);
});
