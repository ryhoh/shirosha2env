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
  echo 'alias l="ls -F"' >> /root/.bashrc && \
  echo 'g++ -std=c++14 "$1" -o a.out & time ./a.out' >> /usr/local/bin/cp14 && \
  chmod 755 /usr/local/bin/cp14

RUN \
  echo 'source ~/.bashrc' > ~/.bash_profile
