FROM nginx:alpine

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy SSL Certificates
COPY nginx-selfsigned.crt /etc/nginx/certs/nginx-selfsigned.crt
COPY nginx-selfsigned.key /etc/nginx/certs/nginx-selfsigned.key

# Copy static website and custom error pages
COPY index.html /usr/share/nginx/html/index.html
COPY 404.html /usr/share/nginx/html/404.html

EXPOSE 80 443