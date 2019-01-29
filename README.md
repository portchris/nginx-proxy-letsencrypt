# Nginx Proxy Letsencrypt
A boilerplate template for the proxy container that will take care of all my SSL certs.

## Environment setup
In order to get this working simply add an environment variables file in your separate docker-compose application with AT LEAST the following variables:

```
VIRTUAL_HOST=my.domain.com
VIRTUAL_PORT=XXXX
LETSENCRYPT_EMAIL=my@email.co.uk
LETSENCRYPT_HOST=my.domain.com

```

There are plenty other environment variables found here: https://github.com/jwilder/nginx-proxy

Next, ensure in your separate docker-compose application it shares the same network:

```
networks:
  default:
    external:
      name: nginx-proxy
```

## Environment Start-up
After setup, simply run ```./start.sh``` 