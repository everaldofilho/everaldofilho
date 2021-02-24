FROM webdevops/nginx
WORKDIR /usr/share/nginx/html
COPY . /usr/share/nginx/html
RUN rm Dockerfile