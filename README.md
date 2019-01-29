# Nginx Proxy Letsencrypt
A boilerplate template for the proxy container that will take care of all my SSL certs.

## Environment setup
In order to get this working simply add an ```./.env``` file with at least the following environment variables:

```
VIRTUAL_HOST=my.domain.com
```

There are plenty other environment variables found here: https://github.com/jwilder/nginx-proxy

## Environment Start-up
After setup, simply run ```./start.sh``` 