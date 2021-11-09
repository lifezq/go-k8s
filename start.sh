minikube start --driver=docker --image-mirror-country='cn' --registry-mirror=https://registry.docker-cn.com
#docker login --username=hi50091061@aliyun.com registry.cn-beijing.aliyuncs.com
#--port=80 对外暴露端口 --target-port=8000 容器内服务端口
kubectl.exe expose deployment demo-deployment --port=80 --target-port=8000

#
#  "registry-mirrors": [
#    "https://registry.docker-cn.com",
#    "https://docker.mirrors.ustc.edu.cn",
#    "http://hub-mirror.c.163.com",
#    "https://cr.console.aliyun.com/"
#  ]
#

kubectl.exe apply -f nginx-deployment.yaml
kubectl.exe logs --tail 100 -f deployment/nginx-deployment
kubectl.exe get deployment/nginx-deployment
kubectl.exe get po nginx-deployment-66b6c48dd5-24r6k
kubectl.exe rollout status deployment/nginx-deployment
kubectl.exe get deployments
kubectl.exe get rs
kubectl.exe get pods --show-labels
kubectl.exe describe svc ngx
kubectl.exe get rs -o wide
kubectl get pods -o wide
kubectl.exe describe deployment ngx-deployment