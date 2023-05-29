FROM amazon/aws-cli:latest

RUN curl -sL -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.27.2/bin/linux/amd64/kubectl
RUN curl -sL -o /usr/bin/aws-iam-authenticator https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.6.2/aws-iam-authenticator_0.6.2_linux_amd64
RUN chmod +x /usr/bin/aws-iam-authenticator && \
    chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
