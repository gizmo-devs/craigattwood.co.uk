# craigattwood.co.uk

Use docker to run the application:
`docker run -d -p 80:80 --name craigattwood.co.uk craigattwood.co.uk`

Using the application behind the jwilder/nginx-proxy and using https:
`docker run -d --name craigattwood.co.uk -e VIRTUAL_HOST=craigattwood.co.uk,www.craigattwood.co.uk -e LETSENCRYPT_HOST=craigattwood.co.uk,www.craigattwood.co.uk craigattwood.co.uk`

The additional parameters (-e) are for:
  VIRTUAL_HOST. to tell the nginx proxy how to direct the traffic.
  LETSENCRYPT_HOST. how to create the SSL Certs to what domain.


### How to use:
1. get the reverse proxy working: https://hub.docker.com/r/jwilder/nginx-proxy
2. Get the SSL service working in the background: https://github.com/nginx-proxy/docker-letsencrypt-nginx-proxy-companion
