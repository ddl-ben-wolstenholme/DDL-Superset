#Tested using DSE or quay.io/domino/compute-environment-images:ubuntu20-py3.9-superset1.5.0-domino5.2 as the base

USER root

RUN pip install  typing-extensions==3.10 wtforms==2.3.3 apache-superset

RUN mkdir -p /var/opt/workspaces/superset && chmod 755 /var/opt/workspaces/superset

#use the correct path to your start_superset.sh, e.g. https://raw.githubusercontent.com/ddl-ben-wolstenholme/Superset_Domino/main/start_superset.sh
ADD https://raw.githubusercontent.com/xxxx/xxxx/xxxx/start_superset.sh /var/opt/workspaces/superset/start

RUN chmod 755 /var/opt/workspaces/superset/start
