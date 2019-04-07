# apache-reverse-proxy

A simple reverse proxy which allows you to specify the target url via an environment property. The following command is an example of how to run the image with google.co.uk as the target:

```bash
docker run -it \
    -p 8080:80 -p 8081:81 \ 
    -e DESTINATION_URL=https://www.google.com/ \
    -e PRESERVE_HOST=Off \
    .../apache-reverse-proxy:latest
```

| name            | description                                      | Values  |
|-----------------|--------------------------------------------------|---------|
| DESTINATION_URL | The target url that the proxy directs traffic to | any url |
| PRESERVE_HOST   | Should the host header be preserved on requests  | On, Off |
| SSL_PROXY_ENGINE | Should the proxy be able to request ssl pages   | On, Off |

**Note:** A proxy status can be found at port 81 or port 80 under /_/proxy-status. See the `conf/extra/httpd-status.conf` file for more details. 