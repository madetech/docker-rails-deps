# Rails Docker base image

Make changes to the `Dockerfile` and then run:

```
docker build -t madetech/rails-deps:<tag name> .
```

Give the image a tag name. For Ruby versions, use the format `rubyX.Y.Z`. For Ruby 2.3.0, the command would be:

```
docker build -t madetech/rails-deps:ruby2.3.0 .
```

You then need to push the image to Docker Hub:

```
docker push madetech/rails-deps:ruby2.3.0
```
