FROM python:3.8

WORKDIR app/

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y ant && \
    apt-get clean;

ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64/
RUN export JAVA_HOME

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN rm requirements.txt

ENTRYPOINT ["jupyter", "lab", "--allow-root", "--ip", "0.0.0.0"]