minikube start --driver=docker --image-mirror-country='cn' --registry-mirror=https://registry.docker-cn.com
#docker login --username=hi50091061@aliyun.com registry.cn-beijing.aliyuncs.com
kubectl.exe expose deployment demo-deployment --port=80 --target-port=8000

