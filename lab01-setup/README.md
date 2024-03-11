# Laboratorio de Jenkins 01 - Instalación
### Duración: 10 minutos.
<img src="https://www.jenkins.io/images/logos/hyderabad/hyderabad256.png" alt="Texto alternativo" width="200"/>

# Instalacion de Jenkins en Docker

Este laboratorio te guiará a través de los pasos para configurar y ejecutar Jenkins utilizando Docker.

## Requisitos Previos:

1. **Docker**: Tener instalado Docker Desktop.
2. **Docker Hub**: Tener una cuenta de Docker Hub.

## Paso 1: Descargar imagen de Jenkins del repositorio de Docker Hub

Ejecuta en la terminal de tu host el siguiente comando:

```bash
docker pull jenkins/jenkins
```

## Paso 2: Crear volume para persistencia de datos de Jenkins

Ejecuta en la terminal de tu host el siguiente comando:

```bash
docker volume create jenkinsvl
```

## Paso 3: Ejecutar la imagen de Jenkins

Ejecuta en la terminal de tu host el siguiente comando:

```bash
docker run -d --name jenkinslocal -p 8080:8080 -p 50000:50000 --mount type=volume,src=jenkinsvl,dst=/var/jenkins_home jenkins/jenkins
```

## Paso 4: Acceder a Jenkins

- Abre un navegador web y accede a `http://localhost:8080`
- En el navegadir wev ahora te solicitará la contraseña inicial de Jenkins que solo sera utilizada para esta parte de incializacion en la configuracion, para ello debes ejeuctar el siguiente comando:

```bash
docker exec jenkinslocal cat /var/jenkins_home/secrets/initialAdminPassword
```

## Paso 5: Instalación de plugins

Una vez que hayas completado la configuración inicial con la contraseña, instala los plugins sugeridos y espera que se complete la descarga para continuar.

## Paso 6: Creación de usuario administrador

Completa la configuracion con la creación de un usuario administrador para gestionar Jenkins, completando todos los campos solicitados, luego de hecho guarda la configuracion y confirma la direccion de administración.


