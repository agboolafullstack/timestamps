Timestamp
# Deploymement of Timestamp Api using EKS Infrastructure with Terraform to create clusters on AWS

The project contains terraform scripts to deploy infrastructure with all the followings • phyton application to insert timestamp • dockerfile used to deploy API • yaml file of cluster-autoscaler to scale out and scale down the EKS cluster nodes. • tf-eks integrated with terraform scripts to deploy time stamp infrastructure • HPA - To scale out and scale down the pods on nodes.

#How to use this deployment

Assuming aws cli is configured

On AWS cloudshell

install KUBECTL 
curl -o kubectl 
https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl 
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc 
After you install kubectl , you can verify its version with the following command: kubectl version --short --client 

install Eksctl
curl --silent --location 
"https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp 
sudo mv /tmp/eksctl /usr/local/bin 
Test that your installation was successful with the following command. eksctl version 

List Worker Nodes 
# List EKS clusters 
eksctl get cluster 
# List NodeGroups in a cluster 
eksctl get nodegroup --cluster=<clusterName> 
# List Nodes in current kubernetes cluster 
kubectl get nodes -o wide 
  aws eks --region eu-west-1 update-kubeconfig --name my-cluster

# kubectl context should be automatically changed to new cluster 
kubectl config view --minify
aws eks --region eu-west-1 update-kubeconfig --name my-cluster
kubectl get pods -n timestamps
kubectl get svc -n timestamps
then use a27e1aa17e2da405cb6d27a29fa106c8-810966963.eu-west-1.elb.amazonaws.com  to enter details

TO DO
hpa and autoscalling is done but I have to explain how it works.



  
  
