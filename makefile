main: init-k8s;
stop: stop-k8s;

init-k8s: init-namespace init-volumn;
stop-k8s: terminate-namespace terminate-volumn;

init-namespace:
	kubectl apply -f k8s/namespace.yml;

terminate-namespace:
	kubectl delete -f k8s/namespace.yml;

init-volumn:
	kubectl apply -f k8s/persistVolumn.yml;

terminate-volumn:
	kubectl delete -f k8s/persistVolumn.yml;