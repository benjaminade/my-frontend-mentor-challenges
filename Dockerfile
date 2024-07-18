# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy your static files to the appropriate location in the Nginx container
COPY . /usr/share/nginx/html/
# COPY styles.css /usr/share/nginx/html/
# COPY images /usr/share/nginx/html/images

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
