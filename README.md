# Codefresh Helm example
[![Codefresh build status]( https://g.codefresh.io/api/badges/pipeline/guysaltoncf/guysaltoncf%2Fguydemo%2Fk8sdemo?key=eyJhbGciOiJIUzI1NiJ9.NWM2MTYxYjU0MzM4ZWU1Mjc3ZmI3N2E2.fgXpZql4CEyuBTYf3t6uC9yvAVG7bTm-sHM726h7T5g&type=cf-2)]( https://g.codefresh.io/pipelines/k8sdemo/builds?filter=trigger:build~Build;pipeline:5d21d1cea7e22e86947ea810~k8sdemo)
![Helm plus Codefresh](codefresh-helm.jpg)

This is an example Go application packaged with Docker and Helm.
It is compiled using Codefresh.


## Create a multi-stage docker image

To compile and package using Docker multi-stage builds

```bash
docker build . -t my-app
```

## To run the docker image

```bash
docker run -p 8080:8080 my-app
```

And then visit http://localhost:8080 in your browser.

## Editing the chart

The chart was created using [Draft](draft.sh). Make sure to edit the templates and values
with your own settings (e.g. docker image deployed).

## To use this project in Codefresh

There is also a [codefresh.yml](codefresh.yml) for easy usage with the [Codefresh](codefresh.io) CI/CD platform.

For the direct deployment without storing the helm chart first see [codefresh-do-not-store.yml](codefresh-do-not-store.yml)

More details can be found in [Codefresh documentation](https://codefresh.io/docs/docs/yaml-examples/examples/helm)

