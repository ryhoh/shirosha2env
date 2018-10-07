FROM ubuntu:18.04

# apt-get
RUN apt-get update
RUN apt-get install -y\
 curl vim screen g++-8 mpi spark python3 python3-pip default-jre default-jdk\
 --fix-missing

# pip3
RUN pip3 install\
 numpy==1.15.2\
 scikit-learn==0.20.0\
 scikit-image==0.14.1\
 scikit-spark==0.1.0rc4\
 matplotlib==3.0.0\
 pandas==0.23.4\
 tensorflow==1.11.0\
 Keras==2.2.4

# alias
RUN echo '\n\
PS1="myenv# "\n\
alias ll="ls -al"\n\
alias gc="gcc-8"\n\
alias gcpp="g++-8 -std=c++14"\n'\
 >> /root/.bashrc

# run (for Mac):
# "docker run -w '`pwd`' -it -v /Users:/Users #{name} /bin/bash"
