FROM jenkinsci/blueocean
USER root
RUN apk update && apk add wget
RUN  wget --no-verbose -O /tmp/apache-maven-3.6.3-bin.tar.gz https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar xzf /tmp/apache-maven-3.6.3-bin.tar.gz -C /opt/ 
RUN ln -s  /opt/apache-maven-3.6.3 /opt/maven 
RUN ln -s /opt/maven/bin/mvn /usr/local/bin 
RUN rm /tmp/apache-maven-3.6.3-bin.tar.gz 
RUN chown jenkins:jenkins /opt/maven;

ENV MAVEN_HOME=/opt/mvn

USER jenkins

