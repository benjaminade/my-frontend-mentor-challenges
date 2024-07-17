FROM node:14 as build-stage
WORKDIR /app
COPY packege*.json
RUN npm install
COPY . .
RUN npm run build
FROM nginx:alpine
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx" , "-g" , "daemon off;"]

