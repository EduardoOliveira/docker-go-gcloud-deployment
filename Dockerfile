FROM golang:1.8

RUN apt install curl

RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

RUN curl -o /tmp/google-cloud-sdk.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-155.0.0-linux-x86_64.tar.gz

RUN tar -xvf /tmp/google-cloud-sdk.tar.gz -C /tmp/

RUN /tmp/google-cloud-sdk/install.sh -q

RUN gcloud components install kubectl


