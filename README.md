# Creating a new `rails-deps` base box

Creating a new base image is simple, as all commits into this repo get auto built by https://hub.docker.com triggers

1. Create a new branch, which is named to match the ruby version. The branch name will be used as the tag. e.g. Using Ruby 2.4.2 you would name the branch `ruby2.4.2`

2. Make changes to the `Dockerfile`

3. Submit a PR to `master`. This will update the `latest` tag.

4. Be sure you *do not* delete the branch after merge.

5. Watch your tagged version appear [here](https://hub.docker.com/r/madetech/docker-rails-deps/)

# Alpine boxes

Please do not merge `alpine` boxes into master, they are to be considered experimental and _might_ cause needless pain
