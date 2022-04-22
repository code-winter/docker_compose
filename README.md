## Документация

Внутри папки находится проект CRUD, Dockerfile, Docker-compose и зависимости.

В Dockerfile за основу взят **Python 3.8**, отключена запись *.pyc*-файлов и отключена буферизация данных.

В Docker-compose описаны сервисы Django, postgresql и nginx

## Для сборки потребуется *.env* файл с описанными параметрами:
- **DEBUG** - *значение 1 или 0 для запуска отладочного режима Django*
- **SECRET_KEY** - *секретный ключ приложения Django*
- **DB_DATABASE** - *название таблицы postgresql*
- **DB_USER** - *пользователь postgresql*
- **DB_PASSWORD** - *пароль пользователя postgresql*
### _Без .env файла контейнер запустится по дефолту с sqlite3 и выключенным режим отладки Django!_

### Сборка контейнера - _docker-compose up -d --build_

## После запуска сборки следует запустить следующие команды:

**docker-compose exec django python manage.py migrate --noinput** - *запуск миграций*

**docker-compose exec django python manage.py collectstatic --no-input --clear** - *сборка статики*

### Сервер поднимается на *[localhost:1337](localhost:1337)*, доступ к REST API идет через *[localhost:1337/api/v1](localhost:1337/api/v1)*
