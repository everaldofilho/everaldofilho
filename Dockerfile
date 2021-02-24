FROM webdevops/nginx
ENV WEB_DOCUMENT_ROOT /app
ENV WEB_DOCUMENT_INDEX index.html
WORKDIR /app
COPY . /app
RUN rm Dockerfile