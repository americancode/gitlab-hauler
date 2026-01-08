FROM alpine:3.23.2

# Install prerequisites
RUN apk update && \
    apk upgrade --no-cache && \
    apk add curl openssl ca-certificates yq

# Set desired versions
ENV HAULER_VERSION="1.2.5"
RUN curl -sfL https://get.hauler.dev | sh

# Verify installation
RUN hauler version