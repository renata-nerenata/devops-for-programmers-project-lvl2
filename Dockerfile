FROM node:14.18.1-slim
WORKDIR /app
RUN npm ci

COPY . .


CMD ["bash", "-c", "npm run migrate && npx fastify start -a 0.0.0.0 -l info -P app.js"]
