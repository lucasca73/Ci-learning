cd product_microservice
pip install -r requirements/prod.txt
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8002