
FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/
USER root
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update && apt-get install -y gcc make curl jq ruby-full nodejs
RUN gem install jekyll
RUN curl -fsSL https://get.docker.com/ | sh
RUN usermod -aG docker jenkins
USER jenkins
