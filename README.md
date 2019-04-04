# apache-reverse-proxy

A simple reverse proxy which allows you to specify the target url via an environment property. The following command is an example of how to run the image with google.co.uk as the target:

`docker run -d -e ORIGIN_URL=https://google.co.uk -p 8080:80 snakeyes30/apache-reverse-proxy`
