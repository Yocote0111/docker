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

## コマンド

```
kubectl config view     # show config
kubectl version         # show version of server/client
kubectl cluster-info    # show cluster info.

kubectl get nodes       # list nodes
kubectl get deploymonet # list deployments
kubectl get pods        # list pods
kubectl get events      # list events
kubectl get services    # list services

kubectl create deployment [name] --image [image]
kubectl expose deployment [name] --type=LoadBalancer --port:8080
```

## Minikube  
 https://kubernetes.io/ja/docs/tutorials/hello-minikube/  

1. 環境要件  

* Hyper-V が利用可能なOSの場合 (Windows Pro 等)  
  - Intel VT-X/amd-v の有効化 (BIOS設定)   
   - Windows プログラムから Hyper-V や　仮想化を有効化  

* Hyber-Vが利用不可能なOSの場合 (Windows Home 等)
  - Windows プログラムから Hyper-V や　仮想化を無効化  
    (これをしていないとVMを立ち上げるときにこける)

2. Minikube のインストール  
* インストーラをダウンロード  
  https://kubernetes.io/docs/tasks/tools/install-minikube/  
* インストールを実行

3. Minikube 起動
```
minikube version  # installation check
minikube start    # boot VM and start k8s
```

4. コマンド  
``` 
minikube help
minikube version
minikube start
minikube status
minikube dashboard
minikube service [name]
minikube addons list
minikube addons enable [addon]
minikube addons disable [addon]
minikube stop
minikube delete
```

## Resources
Resource
 - metadata:  name, kind, api ver., label
 - spec
 - status

Resource Operations
 - create
 - update: replace, patch
 - read: get, list, watch
 - delete
 - other: rollback, read/write scale, read/write status

Resource Type
- Workload: managing container
  - Deployment: for stateless persistent apps (Web Server)
  - ReplicaSet: for stateless persistent apps (Web Server)
  - StatefulSet: for stateful persistent apps (database)
  - Job: run-to-completion apps (batch job)
    - Job
    - CronJob
