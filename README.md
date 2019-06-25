# Docker image for a reverse proxy on macos

Basic Dockerfile to create a nginx reverse proxy for MacOS. At the moment I added two routes, 
you can add more if you want. Simply add a new location, here is a template:
```
location / {
    proxy_set_header Host $http_host;
    proxy_pass http://host.docker.internal:3000/;
    
  }
```

# How to start the container?

```
docker pull mxrkw/macos_nginx
docker run -p 80:80 mxrkw/macos_nginx
```
or directly call
```
docker run -p 80:80 mxrkw/macos_nginx
```