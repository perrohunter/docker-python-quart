# Utilizamos una imagen base de Python 3.9
FROM python:3.9-slim

# Establecemos un directorio de trabajo
WORKDIR /app

# Copiamos los requerimientos e instalamos las dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el código de nuestra aplicación al contenedor
COPY . .

# Exponemos el puerto en el que nuestra aplicación escuchará (5001 en este caso)
EXPOSE 5001

# Definimos el comando para correr nuestra aplicación
CMD ["hypercorn", "app:app", "--bind", "0.0.0.0:5001"]
