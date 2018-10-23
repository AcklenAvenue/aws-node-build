FROM alpine:latest
LABEL maintainer="Byron Sommardahl <byron@acklenavenue.com>" version="0.1.0"

# Install essentials
RUN apk --update --no-cache add curl bash build-base python py-pip docker zip git && \
  pip install --upgrade pip

# Install AWS Utils
RUN pip --no-cache-dir install awscli awsebcli ecs-deploy
  
# Install Node
RUN apk --update --no-cache add nodejs nodejs-npm && \
      npm i -g yarn

# Install jq.
RUN apk --update add jq

CMD ["/bin/sh"]