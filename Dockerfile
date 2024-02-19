FROM node:14 as build-stage
# set a working directory
WORKDIR /app
COPY packege*.json
RUN npm install
COPY . .
RUN npm run build
FROM nginx:alpine
COPY --from=build-stage/app/dist /usr/share/nginx/htmlEXPOSE 80
CMD ["nginx" , "-g" , "daemon off;"]
