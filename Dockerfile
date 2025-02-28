# # Use the official Ruby 3.2 image as a base image
# ARG RUBY_VERSION=3.2
# FROM ruby:${RUBY_VERSION}-bullseye
FROM asr-docker-local.artifactory.umn.edu/ruby_3_2_3_node_20_oracle:1.0.0 
# Set the working directory
WORKDIR /usr/src/app

# Install system packages
RUN apt-get update -qq && \
    apt-get install -y vim && \
    apt-get clean

# Copy all files
COPY . .

ENV MAKE "make --jobs 8"
RUN bundler config set --local without "db2 mysql trilogy sqlserver sqlite postgresql"
# Move sample database.yml and install gems
RUN mv test/connections/databases.example.yml test/connections/databases.yml && \
    bundle install

CMD ["irb"]
