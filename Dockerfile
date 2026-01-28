FROM python:3.11-slim

# Окружение

#Отключает создание файлов .pyc
ENV PYTHONDONTWRITEBYTECODE=1
#Отключает буферизацию вывода Python(логи)
ENV PYTHONUNBUFFERED=1
#Указывает Django, какой файл настроек использовать
ENV DJANGO_SETTINGS_MODULE=Train.settings


# 1. Устанавливаем системные зависимости
# Обновляет список доступных пакетов и их версий из репозиториев и устанавливает их
# Компилятор для языков C/C++
# Для работы с БД через psycopg2 в Python
# Позволяют компилировать расширения и устанавливать пакеты, требующие сборки
# Удаляет кэш списков пакетов после установки
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# 2. Создаём пользователя
RUN useradd --create-home --shell /bin/bash admin

# 3. Создаём рабочую директорию
WORKDIR /app

# 4. Копируем зависимости и устанавливаем их
COPY --chown=admin:admin requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Устанавливаем дополнения для разработки (только для dev!)
RUN pip install --no-cache-dir django-debug-toolbar ipython

# 6. Копируем код с правильными правами
COPY --chown=admin:admin . .

# 7. Переключаемся на пользователя
USER admin

# 8. Открываем порт
EXPOSE 8000

# 9. Запускаем сервер
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]













#FROM python:3.11-slim AS base
#
## Устанавливаем локаль и зависимости для сборки
#ENV PYTHONDONTWRITEBYTECODE=1 \
#    PYTHONUNBUFFERED=1 \
#    LANG=C.UTF-8 \
#    LC_ALL=C.UTF-8
#
#RUN apt-get update && apt-get install -y --no-install-recommends \
#    build-essential \
#    libpq-dev \
#    curl \
#    gcc \
#    && rm -rf /var/lib/apt/lists/*
#
## Создаём пользователя для безопасности (не запускать от root!)
#RUN useradd --create-home --shell /bin/bash django
#
## Работаем от имени пользователя django
#USER django
#WORKDIR /home/django/app
#
## =============================
## 2. Копируем зависимости и устанавливаем их (кэширование!)
## =============================
#FROM base AS dependencies
#
## Копируем только requirements — чтобы кэшировать установку
#COPY --chown=django:django requirements.txt .
#
## Устанавливаем зависимости без кэша (оптимизация)
#RUN pip install --no-cache-dir --upgrade pip && \
#    pip install --no-cache-dir -r requirements.txt
#
## =============================
## 3. Копируем код приложения и собираем финальный образ
## =============================
#FROM dependencies AS production
#
## Копируем весь код приложения
#COPY --chown=django:django . .
#
## Собираем статику (если используется collectstatic)
## Убедитесь, что в settings.py указаны STATIC_ROOT и ALLOWED_HOSTS
#RUN python manage.py collectstatic --noinput
#
## Открываем порт
#EXPOSE 8000
#
## Запускаем сервер через Gunicorn (для продакшена)
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "3", "--timeout", "120", "myproject.wsgi:application"]
