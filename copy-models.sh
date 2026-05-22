#!/bin/bash
echo "Copying models into kind node..."
docker exec argocd-demo-control-plane mkdir -p /opt/CA3JR/models
docker cp /opt/CA3JR/models/blue.pkl argocd-demo-control-plane:/opt/CA3JR/models/blue.pkl
docker cp /opt/CA3JR/models/green.pkl argocd-demo-control-plane:/opt/CA3JR/models/green.pkl
echo "Done."
