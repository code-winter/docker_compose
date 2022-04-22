FROM python:3.8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
#создаем папку для статики
RUN mkdir -p /home/app
ENV HOME=/home/app
ENV APP_HOME=/home/app/django
RUN mkdir $APP_HOME
RUN mkdir $APP_HOME/staticfiles
WORKDIR $APP_HOME
COPY . $APP_HOME
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


