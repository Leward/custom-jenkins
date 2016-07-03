
FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/
USER root
RUN apt-get update && apt-get install -y gcc make ruby-full
RUN gem install jekyll
RUN curl -fsSL https://get.docker.com/ | sh
RUN usermod -aG docker jenkins
USER jenkins
