### Database Setup
MySQL is local to your machine so you would have to set it up. (obviously there are ways of deploying, not sure how yet.)
1. Install MySQL if you haven’t already.
2. Create a new database:
   ```sql
   CREATE DATABASE assets;
   ```
   You can try using the root MySQL user or make your own (MySQL users are different across machines so ignore the passwords in info.txt. The Django superuser password is in there tho)
   To make your own account:
   ```CREATE USER 'your_user'@'localhost' IDENTIFIED BY 'your_password';
    GRANT ALL PRIVILEGES ON assets.* TO 'your_user'@'localhost';
    FLUSH PRIVILEGES;
   ```
   Then import the backup if you want the database already populated
   ```
   mysql -u your_user -p assets < filepath_to/database_backup.sql
   ```
   your_user can also be root, your database name should be 'assets'.

#### Example MacOS MySQLSetup:
   ```bash
      # Install mysql
      brew install mysql pkgconf

      # Start server
      brew services start mysql
      mysql -u root -p # Will prompt to set password

      > CREATE DATABASE assets;
   ```

   Then, for now, I needed to create a user in mysql that matches Aaron's account authentication. An alternative solution is to modify the `DATABASES` field within `asset_library/asset_library/settings.py` to your own preferred acount info. However, for the sake of keeping git diffs clean, I opted for the foremost-mentioned solution:
   
   ```sql
      > CREATE USER 'admin'@'localhost' IDENTIFIED BY 'terskayl';
      > GRANT ALL PRIVILEGES ON assets.* TO 'admin'@'localhost';
      > FLUSH PRIVILEGES;
   ```

   Lastly, import the backup.
   ```bash
   # In repo root directory
   mysql -u root -p assets < assets_backup.sql
   ```

### Environment Setup
   Optional: Setup a Python virtual environment however you usually do.

   For example:
   ```bash
      # tested on macos
      mkdir venv
      python -m venv ./venv
      source venv/bin/activate
   ```

   Install python dependencies:

   `pip install -r requirements.txt`

   This will automatically install all the pip packages we used in our package. These most importantly include:
   - Django
   - mysqlclient
   - mysql-connector-python

### Django
   To start the server, you must first make migrations.
   ```bash
   python asset_library/manage.py migrate
   ````

   Then, you can start the server.

   ```bash
   python asset_library/manage.py runserver
   ```

### Current Contributors:
**Aaron Jiang**: *aajiang@seas.upenn.edu* \
**Cindy Xu**: *cxndy@seas.upenn.edu* \
**Jacky Park**: *soominp@seas.upenn.edu* \
**Amy Liu**: *liuamy05@sas.upenn.edu*

### The End!
If you run into any issues during setup, please let us know. The more bugs we fix, systems we adjust to, and documentation we can add, the better. Thanks!