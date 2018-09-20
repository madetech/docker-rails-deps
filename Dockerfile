FROM debian:stretch

RUN apt update -qq && apt -y install build-essential git libreadline-dev curl git-core zlib1g zlib1g-dev libssl1.0-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev default-libmysqlclient-dev libpq-dev imagemagick libmagickwand-dev libffi-dev mysql-client ffmpeg apt-transport-https phantomjs

# We can't use the distro provided node, so insteall it from the nodesource ppa
RUN curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN echo "deb https://deb.nodesource.com/node_8.x stretch main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt update -qq && apt -y install nodejs

RUN git clone https://github.com/sstephenson/ruby-build.git /tmp/ruby-build && \
  cd /tmp/ruby-build && \
  ./install.sh && \
  cd / && \
  rm -rf /tmp/ruby-build

RUN ruby-build -v 2.3.7 /usr/local
RUN gem install bundler rubygems-bundler --no-rdoc --no-ri
RUN gem regenerate_binstubs
