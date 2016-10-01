FROM centos

# Run like...
# docker run -m 100m -t amaurer/centos_nginx_web


# ME
MAINTAINER maurerdotme

# Add later epel repo
RUN yum install epel-release -y

# Install Nginx
RUN yum install nginx -y

# Nginx on Boot
RUN systemctl enable nginx

# Starts Nginx
RUN nginx