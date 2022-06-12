#!/bin/bash
sudo apt-get update && sudo apt-get install curl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin

# On pensera à ajouter l'auto-completion dans son bashrc
echo "source < (kubectl completion bash)" >> ~/.bashrc
