FROM node:14-slim
WORKDIR /app
COPY . /app
RUN npm install --no-cache
EXPOSE 5000
ENV NAME World
CMD ["node", "app.js"]

