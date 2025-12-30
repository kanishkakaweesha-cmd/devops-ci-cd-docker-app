FROM nginx:alpine

# Copy all web files to nginx html directory
COPY app/index.html /usr/share/nginx/html/
COPY app/css /usr/share/nginx/html/css
COPY app/js /usr/share/nginx/html/js

# Copy nginx configuration
COPY app/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
