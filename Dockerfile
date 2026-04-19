FROM nginx:latest

# 1. Copy your custom config to the Nginx config directory
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 2. Copy your HTML and SVG to the directory Nginx serves from
COPY . /usr/share/nginx/html/

# 3. Ensure permissions are correct
RUN chmod -R 755 /usr/share/nginx/html

