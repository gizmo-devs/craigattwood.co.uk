FROM nginx

COPY public-html /usr/share/nginx/html
ADD config/site.conf /etc/nginx/conf.d/

ADD /etc/ssl/private/insecure.pem /etc/ssl/private/insecure.pem
ADD /etc/ssl/insecure.key /etc/ssl/insecure.key

EXPOSE 80 443
