FROM nginx

COPY public-html /usr/share/nginx/html
ADD config/site.conf /etc/nginx/conf.d/
