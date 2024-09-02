# Construcción de Imagen de Docker

## Descripción
Construcción de una imagen de docker de API REST constrida en Node JS y ejecución de la imagen con docker compose.

## Pasos de Construcción.

- Clonar el siguiente repositorio (API en NODE Js): [API NODE](https://github.com/GeorffreyArevalo/api-todo-nodejs)
- Pegar los archivos ```Dockerfile```, ````docker-compose.yml``` y ```.dockerignore``` en la raíz del proyecto clonado.
- Abrir una terminal o ventana de comandos, estando en la carpeta del proyecto, en el cual se debe encontrar el archivo ```Dockerfile``` y ejecutar el siguiente comando ```docker build -t <nombreDeImage>:<tag> .```
- Para subir la imagen a DockerHub, debe inciar sesión desde la terminal con el comando ```docker login -u <nombredeusuaro>```, seguidamente ingresa la contraseña.
- Finalmente ejecuta el comando ```docker build -t <nombreDeRepositorioDockerHub>:<tag> --push .``` para subir la imagen a docker.
- Para probar la imagen de forma local, cree archivo ```.env``` con las variables de entorno indicadas en el archivo ```.env.template```.
- Y en una terminal, dentro de la raíz del proyecto ejecutar el comando ```docker compose up -d```.



## Variables de entorno para la ejecución de la imagen creada.
- Repositorio de la imagen creada: [Imagen DockerHub](https://hub.docker.com/r/georffrey/todo-api-nodejs)

| Variables de Entorno | Descripción | Ejemplo |
| --- | --- | --- |
DATABASE_CONN_URL | URL de conexión a la base de datos Mongo | mongodb://username:password@hostdb:27017/
DATBASE_NAME | Nombre de la base de datos a conectarse | tododb
PORT | Puerto en el que se levanta o ejecuta la aplicación (API) de Node | 3000
JWT_SECRET | Llave privada (Private Key) con algoritmo SHA256 para firmar y validar Tokens (JWT) | Private Key



