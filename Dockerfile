FROM apache/apisix:latest

# Copy the config file into the container
COPY apisix.yaml /usr/local/apisix/conf/apisix.yaml

# Set environment variables
ENV APISIX_STAND_ALONE=true \ 
    APISIX_CONFIG_PATH="/usr/local/apisix/conf/apisix.yaml" \
    APISIX_LOG_LEVEL=warn
