Timestamp
Deploymement of Timestamp Api using EKS Infrastructure with Terraform to create clusters on AWS

The project contains terraform scripts to deploy infrastructure with all the followings • phyton application to insert timestamp • dockerfile used to deploy API • yaml file of cluster-autoscaler to scale out and scale down the EKS cluster nodes. • tf-eks integrated with terraform scripts to deploy time stamp infrastructure • HPA - To scale out and scale down the pods on nodes.

How to use this deployment

On AWS

curl 
"https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
unzip awscliv2.zip 
sudo ./aws/install 
Step-01-03: Configure AWS Command Line using Security Credentials 
● Go to AWS Management Console --> Services --> IAM 
● Select the IAM User: kalyan 
● Important Note: Use only IAM user to generate Security Credentials. Never ever use Root User. (Highly not recommended) 
● Click on Security credentials tab 
● Click on Create access key 
● Copy Access ID and Secret access key 
● Go to command line and provide the required details 
aws configure 
AWS Access Key ID [None]: ABCDEFGHIAZBERTUCNGG (Replace your creds when prompted) 
AWS Secret Access Key [None]: uMe7fumK1IdDB094q2sGFhM5Bqt3HQRw3IHZzBDTm (Replace your creds when prompted) 
Default region name [None]: us-east-1 
Default output format [None]: json 

KUBECTL install 
curl -o kubectl 
https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl 
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc 
After you install kubectl , you can verify its version with the following command: kubectl version --short --client 

Eksctl Install 
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
# Our kubectl context should be automatically changed to new cluster kubectl config view --minify
  
  
