FROM python:2.7.18-stretch
RUN apt-get update && apt-get install nano wget git -y && mkdir log
ADD rogue_mysql_server.py rogue_mysql_server.py
EXPOSE 3306:3306
CMD ["python","rogue_mysql_server.py"]
