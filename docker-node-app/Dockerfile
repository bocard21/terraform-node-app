# Use a imagem base do Node.js
FROM node:16

# Defina o diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto para dentro do contêiner
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Copiar o restante do código
COPY . .

# Expor a porta 3000 para a aplicação
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
