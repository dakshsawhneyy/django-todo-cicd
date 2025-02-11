FROM python:3

# update pip too warning was coming
RUN pip install --upgrade pip
RUN pip install django==3.2

COPY . .

RUN python manage.py migrate
EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"] 


