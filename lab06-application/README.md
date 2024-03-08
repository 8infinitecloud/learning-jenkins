# Laboratorio de Jenkins 06.1
### Duración: 15 minutos
<img src="https://www.jenkins.io/images/logos/punkins/256.png" alt="Texto alternativo" width="200"/>

# Laboratorio de Jenkins para Build y Despliegue de Aplicación Node.js en Kubernetes

En este laboratorio, configuraremos Jenkins para realizar el build y despliegue de una aplicación Node.js en Kubernetes. Asegúrate de tener instalados los siguientes plugins antes de comenzar:

## Requisitos Previos

1. **Node.js Plugin**: Permite ejecutar scripts de Node.js en Jenkins.
2. **Pipeline Plugin**: Permite definir los pipelines de Jenkins como código.
3. **Pipeline Utility Steps Plugin**: Facilita la ejecución de tareas comunes en los pipelines.
4. **NodeJS Plugin**: Facilita la instalación y gestión de versiones de Node.js en Jenkins.
5. **Kubernetes CLI Plugin**: Permite interactuar con clústeres de Kubernetes desde Jenkins.

Asegúrate de tener estos plugins instalados y actualizados en tu instancia de Jenkins antes de continuar.

## Configuración en Jenkins

1. Configura la integración con tu sistema de control de versiones (por ejemplo, Git) para obtener el código fuente de la aplicación Node.js.
2. Crea dos nuevos jobs en Jenkins: uno para el build y otro para el despliegue de la aplicación.
3. Define los pipelines como código utilizando la sintaxis de Jenkins declarativo o script.
4. Configura las etapas y pasos de cada pipeline según los requisitos de tu aplicación Node.js y Kubernetes.

## Pipeline de Build

```groovy
pipeline {
    agent any
    
    environment {
        NODEJS_VERSION = '14' // Versión de Node.js a utilizar
    }
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/tu-usuario/tu-repositorio.git'
            }
        }
        stage('Instalación de Dependencias') {
            steps {
                nodejs(nodeJSInstallationName: 'node', configId: 'tu-config-id-de-nodejs') {
                    sh 'npm install'
                }
            }
        }
        stage('Build') {
            steps {
                nodejs(nodeJSInstallationName: 'node', configId: 'tu-config-id-de-nodejs') {
                    sh 'npm run build'
                }
            }
        }
        stage('Pruebas') {
            steps {
                nodejs(nodeJSInstallationName: 'node', configId: 'tu-config-id-de-nodejs') {
                    sh 'npm test'
                }
            }
        }
    }
}
```
## Pipeline de Desploy

pipeline {
    agent any
    
    environment {
        KUBECONFIG = credentials('tu-credencial-kubeconfig')
    }
    
    stages {
        stage('Despliegue en Kubernetes') {
            steps {
                sh 'kubectl apply -f tu-archivo-de-manifesto-deploy.yaml'
            }
        }
    }
}
```
