FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY slides.pdf /usr/share/nginx/html/
EXPOSE 80
