FROM python:2.7.18-stretch
RUN apt-get update && apt-get install nano wget git -y
ADD rogue_mysql_server.py rogue_mysql_server.py
CMD ["python","rogue_mysql_server.py"]
