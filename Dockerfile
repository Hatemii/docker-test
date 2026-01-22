# 1. Choose Ruby version
FROM ruby:3.2.2

# 2. System dependencies (These are system libraries, not Ruby gems.)
# Tells Linux: “Here’s the latest list of available packages”
# They live inside the Docker image’s OS, completely separate from:
#     your local Ubuntu
#     your Ruby gems
#     your host machine
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  sqlite3 \
  libsqlite3-dev

# 3. Set working directory
WORKDIR /app

# 4. Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# 5. Install gems
RUN bundle install

# 6. Copy the rest of the application code
COPY . .

# 7. Expose port
EXPOSE 3000

# 8. Start the Rails server
CMD ["bash"]

