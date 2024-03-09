# SPARK DEMO

Small demo of how to set up and use spark.

First, we set up a small spark cluster locally.

Then, we run a small data trasformation task on a python notebook using the cluster that was just set up.

The data used is a subset of the NYC taxi trips dataset, downloaded from [maven analytics data playground](https://mavenanalytics.io/data-playground).

To start the system up, run:
```
docker compose up --attach jupyter
```

Then, copy and paste the url that jupyter spits out on your browser.