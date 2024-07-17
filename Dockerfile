FROM nginx:alpine
<<<<<<< HEAD
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx" , "-g" , "daemon off;"]
=======
COPY . /usr/share/nginx/html
>>>>>>> 54d4705ab0d568cb95b086f7ee1a9f36b76643c7
