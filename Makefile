up:
	docker-compose down
	docker-compose up -d
	./create-datasource.sh
	@echo
	@echo
	@echo
	@echo Prom-Stack setup successfully!
	@echo
	@echo Prometheus:   http://localhost:9090
	@echo Grafana:      http://localhost:3000  \(User\: admin / Password\: perf-gauge\)
	@echo Pushgateway:  http://localhost:9091
	@echo
	@echo

reload-prom:
	curl -X POST http://localhost:9090/-/reload

stop:
	docker-compose down
