# Scripts for this app

## Build images

Please run this script to build images for this application, below script will build images and store it locally in laptop.

`sh build-images.sh`

## Push images to docker hub

Below script will push images to docker hub

`sh push-images.sh`

## Deploy Application

We will deploy this application on kubernetes and follow these steps to deploy this application on kubernetes.

0. change your location to script folder

`cd scripts`

1. Setup correct kubernetes context

```bash
## To check contexts
kubectl config get-contexts

## to set docker desktop contexts
kubectl config use-context docker-desktop
```

2. Create a namespace

```bash
kubectl apply -f ../deploy/kubernetes/0-ns/0-ns.yml
```

3. Create configmap

```bash
kubectl apply -f ../deploy/kubernetes/1-configmap/1-common.yml
kubectl apply -f ../deploy/kubernetes/1-configmap/2-db.yml
kubectl apply -f ../deploy/kubernetes/1-configmap/3-backend.yml
kubectl apply -f ../deploy/kubernetes/1-configmap/4-frontend.yml
```

3. Create secret

```bash
kubectl apply -f ../deploy/kubernetes/2-secret/1-mysql-secret.yml
```

3. Create Persistent Volume

```bash
kubectl apply -f ../deploy/kubernetes/3-pv/1-mysql-pv-volume.yml
```

3. Create Persistent Volume Claim

```bash
kubectl apply -f ../deploy/kubernetes/4-pvc/1-mysql-pv-claim.yml
```

4. Create deployment

```bash
kubectl apply -f ../deploy/kubernetes/5-deployment/1-db.yml
kubectl apply -f ../deploy/kubernetes/5-deployment/2-backend.yml
kubectl apply -f ../deploy/kubernetes/5-deployment/3-frontend.yml
```

5. Create service

```bash
kubectl apply -f ../deploy/kubernetes/6-service/1-db.yml
kubectl apply -f ../deploy/kubernetes/6-service/2-backend.yml
kubectl apply -f ../deploy/kubernetes/6-service/3-frontend.yml
```

6. Expose this app with ingress

## Access application

In order to access this application from your laptop, you need to expose this port

```bash
kubectl -n dev port-forward services/stockbot-frontend 4000:3000
```
