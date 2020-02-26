main: init-k8s;
stop: stop-k8s;

init-k8s: init-namespace init-volumn init-deployment;
stop-k8s: terminate-namespace terminate-volumn terminate-deployment;

init-namespace:
	kubectl apply -f k8s/namespace.yml;

terminate-namespace:
	kubectl delete -f k8s/namespace.yml;

init-volumn:
	kubectl apply -f k8s/persistVolumn.yml;

terminate-volumn:
	kubectl delete -f k8s/persistVolumn.yml;

init-deployment:
	kubectl apply -f k8s/deployment.yml;

terminate-deployment:
	kubectl delete -f k8s/deployment.yml;