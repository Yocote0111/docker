# Kubernetes





# 環境構築

##  学習環境 と 製品環境  
 https://kubernetes.io/docs/setup/  

### 学習環境  
 k8sを試すためのシングルノード環境.
 - Minikube  
    Linux, Windows, Mac
 - Docker Desktop  
    Windows, Mac

### 製品環境
k8sは5つの層がある
 - application  
   ユーザがデプロイするアプリケーション
 - operation  
   クラスタの操作
 - cluster infrastructure  
   VMやネットワーク, セキュリティグループ等の管理をするためのインフラ
 - data plane  
   クラスタが利用するCPU, メモリ, ストレージ, ネットワーク
 - control plane  
   クラスタを操作するためのAPI

製品環境ではいくつかの利用形態がある
 - Managed  
   cluster infra., data plane, control plane の層の機能は提供され, 開発対象はapplicationとoperationのみでよい
 - Turnkey Cloud  
   cluster infra. のみ提供される.
 - On-premise  
   control plane のみ提供される.
 - Custom
   すべて何らかの形でカスタマイズして利用する.

有名な製品環境  
- Google  
  Managed: GKE (Google Kubernetes Engine)  
  Turkey Cloud: GCE (Google Compute Engine)  
  On-premise: GKE On-prem
- AWS  
  Managed: Amazon EKS  
  Turkey Cloud: Amazon EC2
- Microsoft Azure  
  Managed: AKS (Azure Kubernetes Service)  
- OpenShift  
  Managed: OpenShift Dedicated, OpenShift Online  
  On-premise: OpenShift Container Platform  
  Custom: OpenShift Container Platform

1. Dockerのインストール  
    https://www.docker.com/products/docker-desktop
2. 動作確認  
``` 