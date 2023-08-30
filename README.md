# Contenedor de Docker para Quart en Python

Este proyecto contiene un ejemplo simple de como contenerizar una aplicación de Quart en Docker.

Para correr el codigo ejemplo

```bash
python app.py
```

Para Crear el contenedor de Docker

```bash
docker build -t tu-cuenta/tu-tag .
```

Para correr el contenedor, vamos a mapear el puerto `5001` que la aplicación expone al arrancar por `4000` en nuestro ordenador. 

```bash
docker run -it -p 4000:5001 tu-cuenta/tu-tag
```

Y visita http://localhost:4000 

# Usuarios de Apple Silicon

Si estás trabajando en una Mac con Apple Silicon (M1, M2) es mejor que crees una imagen multi-arquitectura


```bash
docker buildx build --platform linux/amd64,linux/arm64 --push -t tu-cuenta/tu-tag . 
```
