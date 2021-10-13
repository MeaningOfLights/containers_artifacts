
az acr login -n registrytwg4763 --expose-token

az acr build --registry registrytwg4763 --image poi .
az acr build --registry registrytwg4763 --image trips .
az acr build --registry registrytwg4763 --image tripviewer .
az acr build --registry registrytwg4763 --image user-java .
az acr build --registry registrytwg4763 --image userprofile .

kubectl apply -f .\secrets.yaml
kubectl apply -f .\poi-deployment.yaml
kubectl apply -f .\userprofile-deployment.yaml
kubectl apply -f .\user-java-deployment.yaml
kubectl apply -f .\trips-deployment.yaml
kubectl apply -f .\tripviewer-deployment.yaml