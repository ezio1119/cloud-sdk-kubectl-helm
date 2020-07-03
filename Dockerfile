FROM google/cloud-sdk:alpine

RUN gcloud components install kubectl

ENV HELM_VERSION 3.2.4

RUN wget https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz

RUN tar -zxvf helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    rm -rf linux-amd64 helm-v${HELM_VERSION}-linux-amd64.tar.gz