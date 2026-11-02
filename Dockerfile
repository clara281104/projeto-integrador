FROM tomcat:9.0-jdk11-temurin

# Limpa os apps de exemplo do Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Desativa a porta de shutdown (8005) e muda a porta HTTP para 10000 (Render)
RUN sed -i 's/port="8005" shutdown="SHUTDOWN"/port="-1" shutdown="SHUTDOWN"/' /usr/local/tomcat/conf/server.xml && \
    sed -i 's/port="8080"/port="10000"/' /usr/local/tomcat/conf/server.xml

# Copia o projeto
COPY AplicacaoWEB/web/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 10000
