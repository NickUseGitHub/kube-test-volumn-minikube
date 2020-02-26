main: init-k8s;

init-k8s: init-namespace;
stop-k8s: terminate-namespace;

init-namespace:
	kubectl apply -f k8s/namespace.yml;

terminate-namespace:
	kubectl delete -f k8s/namespace.yml;