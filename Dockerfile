FROM httpd:2-alpine
RUN echo 'LoadModule proxy_module modules/mod_proxy.so' >> /usr/local/apache2/conf/httpd.conf
RUN echo 'LoadModule proxy_http_module modules/mod_proxy_http.so'   >> /usr/local/apache2/conf/httpd.conf
RUN echo 'LoadModule ssl_module modules/mod_ssl.so'   >> /usr/local/apache2/conf/httpd.conf
RUN echo 'SSLProxyEngine on' >> /usr/local/apache2/conf/httpd.conf
RUN echo 'ProxyPass "/"  "${ORIGIN_URL}"' >> /usr/local/apache2/conf/httpd.conf
RUN echo 'ProxyPassReverse "/"  "${ORIGIN_URL}"' >> /usr/local/apache2/conf/httpd.conf




