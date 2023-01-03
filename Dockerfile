FROM ubi8/ubi:8.5

MAINTAINER K.H. kherfert@informatik.hs-bremen.de

ENV PORT 8000

EXPOSE ${PORT}

RUN yum install -y java-1.8.0-openjdk-devel && \
    yum install -y maven && \
    yum clean all
    
COPY . /java    

WORKDIR /java

CMD ["java", "-jar", "bilds2i.jar"]



