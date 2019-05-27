FROM alpine:3.9

RUN apk add python2 py2-pip mercurial && \
    cd /usr/local && hg clone https://bitbucket.org/obensonne/poole/ && \
    pip install markdown Pygments
    
ENV PATH="/usr/local/poole:${PATH}"

WORKDIR /site

