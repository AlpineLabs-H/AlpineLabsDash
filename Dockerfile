FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY ./image.svg /usr/share/nginx/html/logo.svg
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
