#this shell script copies the /models and /data dirs from VM into the cluster after VM restart
#a better solution would be to create a bind mount b/w thw VM and kind node. ..next time!
echo "Copying models and data into kind node..."
docker exec argocd-demo-control-plane mkdir -p /opt/CA3JR/models
docker exec argocd-demo-control-plane mkdir -p /opt/CA3JR/data
docker cp /opt/CA3JR/models/blue.pkl argocd-demo-control-plane:/opt/CA3JR/models/blue.pkl
docker cp /opt/CA3JR/models/green.pkl argocd-demo-control-plane:/opt/CA3JR/models/green.pkl
docker cp /opt/CA3JR/data/. argocd-demo-control-plane:/opt/CA3JR/data/
echo "Done."
