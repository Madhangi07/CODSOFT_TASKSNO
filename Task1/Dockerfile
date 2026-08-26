# Use lightweight Nginx base image
FROM nginx:alpine

# Copy static website content into Nginx HTML folder
COPY index.html /usr/share/nginx/html/index.html

# Expose HTTP port 80
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]