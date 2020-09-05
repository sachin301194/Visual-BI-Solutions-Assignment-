FROM mcr.microsoft.com/mssql/server:latest
USER root
COPY DBScripts /home/DBScripts
RUN chmod -R +x /home/DBScripts
EXPOSE 1433
USER mssql
ENTRYPOINT /home/DBScripts/entry.sh & /opt/mssql/bin/sqlservr