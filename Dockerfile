FROM node:22-alpine
WORKDIR /app
COPY index.html server.cjs ./
EXPOSE 80
CMD ["node","server.cjs"]
