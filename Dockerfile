FROM tomcat:9-jdk11-openjdk

# Remove a necessidade da porta 8005 que o Render bloqueia
RUN sed -i 's/port="8005" shutdown="SHUTDOWN"/port="-1" shutdown="SHUTDOWN"/g' /usr/local/tomcat/conf/server.xml

# Altera a porta interna do Tomcat para a 10000 que o Render exige
RUN sed -i 's/port="8080"/port="10000"/g' /usr/local/tomcat/conf/server.xml

# Copia as suas telas JSP para a pasta do servidor
COPY AplicacaoWEB/web/ /usr/local/tomcat/webapps/ROOT/
