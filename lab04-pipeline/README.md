 # Laboratorio de Jenkins 04.01
### Duración: 10 minutos.
<img src="https://www.jenkins.io/images/logos/plumber/plumber.png" alt="Texto alternativo" width="200"/>

# Ejecución de pipeline en jenkins

En este laboratorio, aprenderás a crear un pipeline en Jenkins que realice acciones básicas de Bash en cinco etapas.

## Paso 1: Iniciar Jenkins

Si aún no has iniciado Jenkins, asegúrate de ejecutar el contenedor de Docker para Jenkins, si realizaste algun reinicio deberas volver a ejecutar el comando:

```bash
docker run -d --name jenkinslocal -p 8080:8080 -p 50000:50000 --mount type=volume,src=jenkinsvl,dst=/var/jenkins_home jenkins/jenkins
```

Un requisito importante es tener instalado el plugin: Pipeline y Pipeline Stage View.

## Paso 2: Crear un nuevo Pipeline Job

- En el panel de administración de Jenkins, selecciona "New Item" (Nuevo elemento).
- Ingresa un nombre para el job, por ejemplo, "Bash Pipeline".
- Selecciona "Pipeline" como el tipo de proyecto y haz clic en "OK" (Aceptar).

## Paso 3: Configurar el Pipeline

En esta parte te encontraras en la configuracion del pipeline, seleciona en el menu izquierdo la opcion Pipeline y en la seccion Pipeline debe estar selecionado por default "Pipeline Script", debajo encontraras un campo donde podras copiar el siguiente script:

```groovy
pipeline {
    agent any
    stages {
        stage('Etapa 1') {
            steps {
                sh 'echo "Hola desde la Etapa 1"'
            }
        }
        stage('Etapa 2') {
            steps {
                sh 'echo "Hola desde la Etapa 2"'
            }
        }
        stage('Etapa 3') {
            steps {
                sh 'echo "Hola desde la Etapa 3"'
            }
        }
        stage('Etapa 4') {
            steps {
                sh 'echo "Hola desde la Etapa 4"'
            }
        }
        stage('Etapa 5') {
            steps {
                sh 'echo "Hola desde la Etapa 5"'
            }
        }
    }
}

```

Finalmente, procede a guardar la configuracion.

El script describe el flujo de un pipeline en 5 etapas, en los cuales realiza la ejecución de un comando bash el cual describe en que etapa nos encontramos.

## Paso 4: Ejecutar Pipeline

Luego de guardar la configuracion, te encontraras en el menu del Pipeline, aqui puedes ejecutarlo con un click en "Build" (Construir ahora). Podemos visualizar cada etapa en status y validar los resultados de cada etapa selecionado el numero de ejecución en historial de tareas.

# Laboratorio de Jenkins 04.02
### Duración: 10 minutos.
<img src="https://www.jenkins.io/images/logos/nerd/256.png" alt="Texto alternativo" width="200"/>

# Ejecución de pipeline en jenkins desde SCM

En este laboratorio, aprenderás a crear un pipeline en Jenkins que realice acciones básicas de Bash en cinco etapas.

## Paso 1: Iniciar Jenkins

Si aún no has iniciado Jenkins, asegúrate de ejecutar el contenedor de Docker para Jenkins, si realizaste algun reinicio deberas volver a ejecutar el comando:

```bash
docker run -d --name jenkinslocal -p 8080:8080 -p 50000:50000 --mount type=volume,src=jenkinsvl,dst=/var/jenkins_home jenkins/jenkins
```

Un requisito importante es tener instalado el plugin: Pipeline y Pipeline Stage View.

## Paso 2: Crear un nuevo Pipeline Job

- En el panel de administración de Jenkins, selecciona "New Item" (Nuevo elemento).
- Ingresa un nombre para el job, por ejemplo, "Bash Pipeline".
- Selecciona "Pipeline" como el tipo de proyecto y haz clic en "OK" (Aceptar).

## Paso 3: Configurar el Pipeline

En esta parte te encontraras en la configuracion del pipeline, seleciona en el menu izquierdo la opcion Pipeline y en la seccion Pipeline debe estar selecionado "Pipeline Script from SCM", debajo encontraras los siguientes campos, los cuales los llenaremos de la siguiente forma:

- SCM: Git
  - Repositories:
    - Repositories URL: https://github.com/munozhassel/jenkins-learning.git (URL HTTPS DEL REPOSITORIO)
    - Credentials: none (EL REPOSITORIO EL PUBLICO, POR LO QUE NO SE NECESITA CREDENCIALES)
  - Branches to build:
    - */main
  - Scrip Path: lab04-pipeline/Jenkinsfile

Finalmente, procede a guardar la configuracion.

El script describe el flujo de un pipeline en 5 etapas, en los cuales realiza la ejecución de un comando bash el cual describe en que etapa nos encontramos.

## Paso 4: Ejecutar Pipeline

Luego de guardar la configuracion, te encontraras en el menu del Pipeline, aqui puedes ejecutarlo con un click en "Build" (Construir ahora). Podemos visualizar cada etapa en status y validar los resultados de cada etapa selecionado el numero de ejecución en historial de tareas.

