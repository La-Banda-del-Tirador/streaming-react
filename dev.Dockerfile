# Usa una imagen base oficial de Node.js
FROM node:16-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de dependencias
COPY package.json package-lock.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código fuente al contenedor
COPY . .

# Expone el puerto en el que correrá la aplicación
EXPOSE 5173

# Comando para iniciar la aplicación en modo de desarrollo
CMD ["npm", "run", "dev"]