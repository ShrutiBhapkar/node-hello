# Stage 1: Build
FROM node:14 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Production
FROM node:14
WORKDIR /app
COPY --from=build /app .
CMD ["node", "index.js"]


