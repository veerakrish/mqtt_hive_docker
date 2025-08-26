FROM hivemq/hivemq-ce:2023.2

# Set environment variables
ENV HIVEMQ_MQTT_PORT=80
ENV HIVEMQ_REST_API_ENABLED=true
ENV HIVEMQ_REST_API_PORT=8888
ENV HIVEMQ_OPTS="-Dcom.hivemq.config.netty.bindAddress=0.0.0.0"

# Copy configuration
COPY config.xml /opt/hivemq/conf/config.xml

# Expose port 80
EXPOSE 80
