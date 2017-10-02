FROM sonarqube:latest

#### Http port - might be needed?
#EXPOSE 9000 9092


#Install the bitbucket-pull-request plugin
RUN cd $SONARQUBE_HOME/extensions/plugins \
    && curl -o sonar-bitbucket-plugin-1.2.1.jar -fSL https://github.com/mibexsoftware/sonar-bitbucket-plugin/releases/download/v1.2.1/sonar-bitbucket-plugin-1.2.1.jar

