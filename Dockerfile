ARG BASE_IMAGE
FROM ${BASE_IMAGE}

ARG PLANTUML_VERSION 

USER root
RUN apk add --no-cache openjdk11-jre-headless graphviz && \
    wget -O /usr/local/bin/plantuml.jar https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download
USER user

ENTRYPOINT [ "java", "-jar", "/usr/local/bin/plantuml.jar" ]
CMD [ "-h" ]
