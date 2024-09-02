
FROM node:20.17.0-alpine3.20 as dep-prod
WORKDIR /app
COPY package.json ./
RUN npm install --prod

FROM node:20.17.0-alpine3.20 as builder
ENV PORT=${PORT}
EXPOSE ${PORT}
WORKDIR /app
COPY --from=dep-prod /app/node_modules ./node_modules
COPY . .
CMD ["node", "app.js"]


