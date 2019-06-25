
FROM nginx
LABEL maintainer="Mxrk"

ADD nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
