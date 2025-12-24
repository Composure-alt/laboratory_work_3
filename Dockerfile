# Используем базовый образ с Python
FROM python:3.11-slim

# Рабочая директория
WORKDIR /app

# Копируем все файлы из текущей директории в контейнер
COPY . /app

# Устанавливаем зависимости из requirements.txt
RUN if [ -f "requirements.txt" ]; then pip install -r requirements.txt; fi

# Указываем команду для запуска приложения
CMD ["python", "app.py"]
