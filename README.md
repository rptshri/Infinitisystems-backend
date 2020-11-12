# Infinitisystems-backend

# for local
workon web
cd infiniti
python manage.py runserver
python manage.py collectstatic

# for hosting
workon infiniti-virtualen
cd infiniti
python manage.py runserver
python manage.py collectstatic



# taking db backups
mysqldump -u infiniti -h infiniti.mysql.pythonanywhere-services.com --set-gtid-purged=OFF 'infiniti$infiniti'> db-backup.sql