# Laboratorio de Jenkins 01 - Instalación
### Duración: 10 minutos.
<img src="https://www.jenkins.io/images/logos/hyderabad/hyderabad256.png" alt="Texto alternativo" width="200"/>

# Instalacion de Jenkins en Docker

Este laboratorio te guiará a través de los pasos para configurar y ejecutar Jenkins utilizando Docker Desktop, con lo cual contaras con Jenkins de manera local con data persistente, esto te permitira explorar las opciones basicas como instalaciones de plugins, organizar y realizar configuraciones de jobs, explorar opciones seguridad, etc.

## Requisitos Previos:

1. **Docker**: Tener instalado Docker Desktop.
2. **Docker Hub**: Tener una cuenta de Docker Hub.

## Diagrama de funcionamiento de jenkins localmente:

<img src="https://github.com/munozhassel/jenkins-learning/blob/main/img/jenkins-labs-lab-01.1.drawio.svg" alt="Texto alternativo">


## Paso 1: Descargar imagen de Jenkins del repositorio de Docker Hub

Ejecuta en la terminal de tu host el siguiente comando:

```bash
docker pull jenkins/jenkins
```

Ahora cuentas con la imagen ultima imagen oficial de Jenkins!

## Paso 2: Crear volume para persistencia de datos de Jenkins

Ejecuta en la terminal de tu host el siguiente comando:

```bash
docker volume create jenkinsvl
```

Creaste un volume que es un espacio aislado para almacenar los datos importantes de Jenkins, como configuraciones, jobs, secretos encriptados, etc.

## Paso 3: Ejecutar la imagen de Jenkins

Ejecuta en la terminal de tu host el siguiente comando:

```bash
docker run -d --name jenkinslocal -p 8080:8080 -p 50000:50000 --mount type=volume,src=jenkinsvl,dst=/var/jenkins_home jenkins/jenkins
```

Estas ejecutando un contenedor con el nombre "jenkinslocal" en los puertos 8080 y 5000, los cuales son los puertos por defecto de Jenkins. Ademas, estas usando el volume que creamos "jenkinsvl" para que la data de la ruta "/var/jenkins_home" sea peristente pese a que el contenedor se detenga o sea eliminado. Por ultimo, estas usando la imagen oficial de Jenkins "jenkins/jenkins".

## Paso 4: Acceder a Jenkins

Valida que el contenedor se encuentre "RUNNING" y para ingresare a la interfaz grafica de jenkins realizamos:

- Abre un navegador web y accede a `http://localhost:8080`
- En el navegador web ahora te solicitará la contraseña inicial de Jenkins que solo sera utilizada para esta parte de incializacion en la configuracion, para ello debes ejeuctar el siguiente comando:

```bash
docker exec jenkinslocal cat /var/jenkins_home/secrets/initialAdminPassword
```

Copia la clave e ingresala en la pagina de Jenkins.

## Paso 5: Instalación de plugins

Una vez que hayas completado la configuración inicial con la contraseña, instala los plugins sugeridos y espera que se complete la descarga para continuar.

## Paso 6: Creación de usuario administrador

Completa la configuracion con la creación de un usuario administrador para gestionar Jenkins, completando todos los campos solicitados, luego de hecho guarda la configuracion y confirma la direccion de administración.

Ahora puedes empezar a explorar Jenkins desde tu computadora local!