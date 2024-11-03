# Use MySQL official image
FROM mysql:8.0

# Copy custom MySQL configuration file to container
COPY my.cnf /etc/mysql/conf.d/my.cnf

# Create a directory for keyring files (if it doesn’t exist)
RUN mkdir -p /var/lib/mysql-keyring && \
    chown -R mysql:mysql /var/lib/mysql-keyring

# Set permissions to secure keyring directory
RUN chmod 700 /var/lib/mysql-keyring

# Expose port
EXPOSE 3306
