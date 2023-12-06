FROM openjdk:11-jre-buster

RUN apt-get update && apt-get install -y \
    libxrender1 \
    libxi6 \
    libxext6 \
    libxtst6 \
    x11-apps \
    xauth \
    && rm -rf /var/lib/apt/lists/*

ENV DISPLAY=:0

WORKDIR /apps

COPY calc.jar /apps

CMD [ "java", "-jar", "calc.jar" ]
