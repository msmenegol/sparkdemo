FROM python:3.8

WORKDIR /app/

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y ant && \
    apt-get clean;

ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64/
RUN export JAVA_HOME

RUN wget https://jdbc.postgresql.org/download/postgresql-42.7.1.jar
RUN mkdir -p /opt/spark_jars/
RUN mv postgresql-42.7.1.jar /opt/spark_jars/

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN rm requirements.txt

ENTRYPOINT ["jupyter", "lab", "--allow-root", "--ip", "0.0.0.0"]