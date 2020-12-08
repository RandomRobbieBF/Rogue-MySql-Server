Rogue-MySql-Server
==================

Edit script and change file to read and server port if you want. Run script and connect to your server for read file from client side. 
Read mysql.log for readed file content.

```
docker build -t Rogue-MySql-Server:latest .
docker run -it -p 3306:3306 -v $(pwd):/log/ Rogue-MySql-Server:latest
```

You can cat mysql.log to see what has been captured.
