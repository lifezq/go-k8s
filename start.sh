minikube start --driver=docker --image-mirror-country='cn' --registry-mirror=https://registry.docker-cn.com
#docker login --username=hi50091061@aliyun.com registry.cn-beijing.aliyuncs.com
kubectl.exe expose deployment demo-deployment --port=80 --target-port=8000

kubectl.exe apply -f nginx-deployment.yaml
kubectl.exe logs --tail 100 -f deployment/nginx-deployment
kubectl.exe get deployment/nginx-deployment
kubectl.exe get po nginx-deployment-66b6c48dd5-24r6k
kubectl.exe rollout status deployment/nginx-deployment
kubectl.exe get deployments
kubectl.exe get rs
kubectl.exe get pods --show-labels
