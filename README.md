### Database Setup
MySQL is local to your machine so you would have to set it up. (obviously there are ways of deploying, not sure how yet.)
1. Install MySQL if you haven’t already.
2. Create a new database:
   ```sql
   CREATE DATABASE your_database_name;
   ```
   You can try using the root MySQL user or make your own (MySQL users are different across machines so ignore the passwords in info.txt. The Django superuser password is in there tho)
   To make your own account:
   ```CREATE USER 'your_user'@'localhost' IDENTIFIED BY 'your_password';
    GRANT ALL PRIVILEGES ON your_database_name.* TO 'your_user'@'localhost';
    FLUSH PRIVILEGES;
   ```
   Then import the backup if you want the database already populated
   ```
   mysql -u your_user -p your_database_name < filepath_to/database_backup.sql
   ```
   your_user can also be root, your_database_name should be 'assets'.

### Django
   To start the server, use manage.py in the asset_library folder  
   1. Open shell in asset_library folder
   2. ```
python manage.py runserver
      ```
