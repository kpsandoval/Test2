FROM oscarfonts/geoserver

# Copia la configuración de capas y estilos
COPY config/geoserver_data /opt/geoserver_data

# Variables de entorno de GeoServer
ENV GEOSERVER_DATA_DIR=/opt/geoserver_data
ENV GEOSERVER_ADMIN_USER=admin
ENV GEOSERVER_ADMIN_PASSWORD=geoserver

EXPOSE 8080

CMD ["catalina.sh", "run"]
