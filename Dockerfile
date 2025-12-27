#uygulamanın çalışması için JRE lazım
FROM ubuntu:latest
LABEL authors="erdogan"

#projenin jar dosyası burada
ARG JAR_FILE=target/devops_001_hello-1.0.0.jar

#projenin jar halini docker icine kopyala
COPY ${JAR_FILE} my_app.jar

#uygulamaların iç portunu sabitle
EXPOSE 8080


#uygulamayı java komutla çalıştır
ENTRYPOINT ["top", "-b","java","-jar","/my_app.jar"]