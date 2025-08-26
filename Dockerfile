FROM hivemq/hivemq-ce:2023.2

# Create and set permissions for config file
RUN mkdir -p /opt/hivemq/conf
COPY config.xml /opt/hivemq/conf/config.xml
RUN chmod 644 /opt/hivemq/conf/config.xml