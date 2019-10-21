FROM hashicorp/terraform:light

ARG VERSION="0.20.5"

RUN cd /tmp && \
    wget https://github.com/gruntwork-io/terragrunt/releases/download/v${VERSION}/terragrunt_linux_amd64 && \
    mv terragrunt_linux_amd64 /usr/bin/terragrunt && \
    chmod u+x /usr/bin/terragrunt && \
    ln -s /usr/bin/terragrunt /usr/bin/tg

ENTRYPOINT ["tg"]


