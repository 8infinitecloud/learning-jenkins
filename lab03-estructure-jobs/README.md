# Laboratorio de Jenkins 03 - Organización
### Duración: 5 minutos.
<img src="https://www.jenkins.io/images/logos/parasite/256.png" alt="Texto alternativo" width="200"/>

# Organizacion de proyectos de Infraestructura y Automatización

En este laboratorio, aprenderás a configurar una estructura de proyectos y jobs en Jenkins para desplegar infraestructura, aplicaciones y ejecutar automatizaciones en servidores.

## 1. Crear Carpetas en Jenkins

- En el panel de Jenkins, haz clic en "New Item" (Nueva Tarea).
- Ingresa un nombre para la carpeta, por ejemplo, "Infraestructure".
- Selecciona "Folder" (Carpeta) como el tipo de carpeta y haz clic en "OK".

- Regresa al panel de Jenkins, haz clic en "New Item" (Nueva Tarea).
- Ingresa un nombre para la carpeta, por ejemplo, "Application".
- Selecciona "Folder" (Carpeta) como el tipo de carpeta y haz clic en "OK".

## 2. Configurar Proyectos de Jenkins

### Despliegue de Infraestructura

1. **Crear Job de Terraform**

    - Dentro de la carpeta "Infraestructure", crea un nuevo proyecto de estilo libre en Jenkins con el nombre "terraform".

2. **Crear Job de Ansible para Configuración de Servidores**

    - Dentro de la carpeta "Application", crea un nuevo proyecto de estilo libre en Jenkins con el nombre "nodejs".

