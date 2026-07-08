#!/bin/bash
git clone https://github.com/guniversityBR/aplicacao-voto.git
kubectl create -f aplicacao-voto/namespaces/ --save-config --record
kubectl create -f aplicacao-voto/deployements/ --save-config --record
kubectl create -f aplicacao-voto/services/ --save-config --record
kubectl get deployment,service -n vote
