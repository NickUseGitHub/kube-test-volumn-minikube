main: init-k8s;
stop: stop-k8s;

init-k8s: init-namespace init-volumn init-deployment init-ingress;
stop-k8s: terminate-namespace terminate-volumn terminate-deployment terminate-ingress;

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

init-ingress:
	kubectl apply -f k8s/ingress.yml;

terminate-ingress:
	kubectl delete -f k8s/ingress.yml;