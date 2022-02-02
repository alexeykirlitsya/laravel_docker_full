## Установка локально

# [SSL Установка локально](https://medium.com/@rubenvermeulen/running-angular-cli-over-https-with-a-trusted-certificate-4a0d5f92747a)

* openssl req -new > webserver.csr _(Common Name (eg, YOUR name) []: dev.laravel.local)_
* openssl rsa -in privkey.pem -out webserver.key
* openssl x509 -in webserver.csr -out webserver.cert -req -signkey webserver.key -days 365

```
openssl req -x509 -out docker.local.crt -keyout docker.local.key \
  -newkey rsa:2048 -nodes -days 10000 -sha256 \
  -subj '/CN=docker.local' -extensions EXT -config <( \
   printf "[dn]\nCN=docker.local\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:docker.local\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
```
