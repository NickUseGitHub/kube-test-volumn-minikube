# This repository for test persistVolumn on kubernetes

## prerequisite
- minikube
- kubectl
- virtualbox (This repo use virtualbox)

## installation
install all package via [brew](https://www.google.com)

- install virtualbox
  ```
  brew cask install virtualbox
  ```
- install minikube with this command
  ```
  brew install minikube
  ```
- install kubectl with this command
  ```
  brew install kubectl
  ```

### start from scratch
- start with nginx app from [this tutorial https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/)
- expose app with [service and ingress https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/](https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/)

```
find address ingress from >>cluster i<<
referrence: https://www.edureka.co/community/19279/kubectl-get-ing-gives-no-address-in-kubernetes-ingress
```