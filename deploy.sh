kubectl apply -f k8s
kubectl set image deployment/server-deployment server=edmitrenko/multi-server:${{ github.sha }}
kubectl set image deployments/client-deployment client=edmitrenko/multi-client:${{ github.sha }}
kubectl set image deployments/worker-deployment worker=edmitrenko/multi-worker:${{ github.sha }}
