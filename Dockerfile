FROM hmlandregistry/dev_base_ruby:4.1

WORKDIR /src

ADD Gemfile* /src/
RUN bundle install


# V1
ENV APPLIFASHION 'https://demo.applitools.com/tlcHackathonMasterV1.html'

# Dev Branch
#ENV APPLIFASHION 'https://demo.applitools.com/tlcHackathonDev.html'

# Prod
#ENV APPLIFASHION 'https://demo.applitools.com/tlcHackathonMasterV2.html'

ENV DRIVER 'chrome'
