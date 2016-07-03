
FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/
USER root
RUN apt-get update && apt-get install -y gcc make ruby-full
RUN gem install jekyll
USER jenkins
