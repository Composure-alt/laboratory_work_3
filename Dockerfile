# Используем базовый образ с Python
FROM python:3.11-slim

# Рабочая директория
WORKDIR /app

# Копируем все файлы из текущей директории в контейнер
COPY . /app

# Обновляем pip и устанавливаем зависимости из requirements.txt
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Указываем команду для запуска приложения
CMD ["python", "app.py"]
