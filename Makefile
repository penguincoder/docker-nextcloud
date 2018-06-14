.PHONY: update

update:
	docker pull nextcloud:fpm && \
	docker pull jrcs/letsencrypt-nginx-proxy-companion && \
	docker pull jwilder/nginx-proxy:alpine && \
	docker pull nginx:stable && \
	docker-compose up --build -d
