main: init-k8s;

init-k8s: init-namespace;

init-namespace:
	kubectl apply -f k8s/namespace.yml;