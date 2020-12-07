FROM PYTHON:2.7
RUN apt-get update && apt-get install nano wget git -y
ADD rogue_mysql_server.py rogue_mysql_server.py
CMD ["rogue_mysql_server.py"]
