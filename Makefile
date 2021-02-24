build:
	docker build -t everaldofilho/everaldofilho:latest .
start:
	docker run --rm -p 80:80 everaldofilho/everaldofilho:latest
publish:
	docker push everaldofilho/everaldofilho:latest
	docker tag everaldofilho/everaldofilho:latest gcr.io/macetes-dev-305800/everaldofilho:latest
	gcloud run deploy everaldo-filho --image=docker.io/everaldofilho/everaldofilho:latest --platform=managed --region=us-central1 --project=criativoweb-289716
restart:
	make build
	make start