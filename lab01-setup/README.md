# Laboratorio de Jenkins 01
### Duración: 10 minutos.
<img src="https://www.jenkins.io/images/logos/hyderabad/hyderabad256.png" alt="Texto alternativo" width="200"/>

# Setup de Jenkins

Este laboratorio te guiará a través de los pasos para configurar y ejecutar Jenkins utilizando Docker.

## Requisitos Previos:

1. **Docker**: Tener instalado Docker Desktop.
2. **Docker Hub**: Tener una cuenta de Docker Hub.

## Paso 1: Descargar imagen de Jenkins del repositorio de Docker Hub

```bash
docker pull jenkins/jenkins
```

## Paso 2: Crear volume para persistencia de datos de Jenkins

```bash
docker volume create jenkinsvl
```

## Paso 3: Ejecutar la imagen de Jenkins

```bash
docker run -d --name jenkinstest1 -p 8080:8080 -p 50000:50000 --mount type=volume,src=jenkinsvl,dst=/var/jenkins_home jenkins/jenkins
```

## Paso 4: Acceder a Jenkins

- Abre un navegador web y accede a `http://localhost:8080`

## Paso 5: Instalación de plugins

Una vez que hayas completado la configuración inicial, instala los plugins necesarios según tus requerimientos.

## Paso 6: Creación de usuario administrador

Crea un usuario administrador para gestionar Jenkins.
