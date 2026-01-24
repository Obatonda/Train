# Dockerfile — для разработки
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SETTINGS_MODULE=train.settings
ENV DEBUG=1

# 1. Создаём пользователя (без chown — он не нужен, если мы переключимся до COPY)
RUN useradd --create-home --shell /bin/bash admin

# 2. Переключаемся на пользователя ДО копирования файлов
USER admin

# 3. Создаём рабочую директорию — теперь она будет принадлежать admin
WORKDIR /app

# 4. Копируем зависимости и устанавливаем их (файлы уже от admin)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Устанавливаем дополнения для разработки
RUN pip install --no-cache-dir django-debug-toolbar ipython

# 5. Копируем код — теперь он копируется от имени admin, а не root
COPY . .

# Открываем порт
EXPOSE 8000

# Запускаем runserver с авто-перезагрузкой и отладкой
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
