FROM alpine:3.9

RUN apk add --no-cache \
  bash \
  gcc \
  g++ \
  python3 \
  vim \
  curl

# alias
RUN \
  echo 'PS1="myenv# "' >> /root/.bashrc && \
  echo 'alias ll="ls -al"' >> /root/.bashrc && \
  echo 'alias cp14="g++ -std=c++14"' >> /root/.bashrc && \
  echo 'alias l="ls -F"' >> /root/.bashrc

RUN \
  echo 'source ~/.bashrc' > ~/.bash_profile
