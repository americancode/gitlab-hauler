FROM alpine:3.21.3

# Install prerequisites
RUN apk update && \
    apk upgrade --no-cache && \
    apk add curl openssl ca-certificates

# Set desired versions
ENV HAULER_VERSION="1.2.2"
RUN curl -sfL https://get.hauler.dev | sh

# Verify installation
RUN hauler version
