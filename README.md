# Docker image for a reverse proxy on macos

Basic Dockerfile to create a nginx reverse proxy for MacOS. At the moment I added two routes, 
you can add more if you want. Simply add a new location, here is a template:
```
location /template {
    proxy_set_header Host $http_host;
    proxy_pass http://host.docker.internal:3000/;
    
  }
```

# Example use cases
- Run services on your mac and access them via the reverse proxy.
- Run multiple webservers on the host machine and access them on the same port. (Can be used to prevent CORS problems).

# How to start the container?

```
docker pull mxrkw/macos_nginx
docker run -p 80:80 mxrkw/macos_nginx
```
or directly call
```
docker run -p 80:80 mxrkw/macos_nginx
```
If you want to run the container in the background:
```
docker run -d -p 80:80 mxrkw/macos_nginx
```