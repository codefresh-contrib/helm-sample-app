# Codefresh Helm example

![Helm plus Codefresh](codefresh-helm.jpg)

This is an example Go application packaged with Docker and Helm.
It is compiled using Codefresh.


## Create a multi-stage docker image

To compile and package using Docker multi-stage builds

```bash
docker build . -t my-app
```

```

## To run the docker image

```bash
docker run -p 8080:8080 my-app
```

And then visit http://localhost:8080 in your browser.

## To use this project in Codefresh

There is also a [codefresh.yml](codefresh.yml) for easy usage with the [Codefresh](codefresh.io) CI/CD platform.

For the direct deployment without storing the helm chart first see [codefresh-do-not-store.yml](codefresh-package-only.yml)

More details can be found in [Codefresh documentation](https://codefresh.io/docs/docs/yaml-examples/examples/helm)

