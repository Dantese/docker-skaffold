FROM google/cloud-sdk:latest

RUN curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl
RUN chmod +x /usr/local/bin/kubectl

RUN curl -Lo /usr/local/bin/skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64
RUN chmod +x /usr/local/bin/skaffold

RUN curl -Lo /tmp/kustomize.tar.gz https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize/v3.8.2/kustomize_v3.8.2_linux_amd64.tar.gz
RUN tar xzf /tmp/kustomize.tar.gz -C /usr/local/bin
RUN chmod +x /usr/local/bin/kustomize
RUN rm /tmp/kustomize.tar.gz

RUN curl -sL -o /usr/local/bin/sops https://github.com/mozilla/sops/releases/download/v3.5.0/sops-v3.5.0.linux
RUN chmod +x /usr/local/bin/sops
