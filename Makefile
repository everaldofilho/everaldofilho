build:
	docker build -t everaldofilho/everaldofilho:latest .
start:
	docker run --rm -p 80:80 everaldofilho/everaldofilho:latest
publish:
	docker push everaldofilho/everaldofilho:latest
restart:
	make build
	make start