FROM node:18-alpine AS build-stage
WORKDIR /src
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build --prod

FROM nginx:alpine
COPY --from=build-stage /src/dist/angular-app /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
