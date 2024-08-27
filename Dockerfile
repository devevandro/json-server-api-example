# Usando a imagem oficial do Node.js 18
FROM node:18

# Definindo o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copiando o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instalando as dependências do projeto
RUN npm install

# Copiando todos os arquivos do projeto para o diretório de trabalho
COPY . .

# Informando ao Docker que a aplicação vai rodar na porta 3000
EXPOSE 6500

# Comando para rodar a aplicação
CMD ["npm", "start"]
