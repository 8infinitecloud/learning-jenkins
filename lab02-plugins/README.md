# Laboratorio de Jenkins 02
### Duración: 10 minutos.
<img src="https://www.jenkins.io/images/logos/cosmonaut/cosmonaut.png" alt="Texto alternativo" width="200"/>

# Instalacion y ejecucion de job con plugins

Este laboratorio te guiará a través de los pasos para instalar el plugin de Chuck Norris en Jenkins y ejecutarlo.

## Paso 1: Iniciar Jenkins

Si aún no has iniciado Jenkins, asegúrate de ejecutar el contenedor de Docker para Jenkins, si realizaste algun reinicio deberas volver a ejecutar el comando:

```bash
docker run -d --name jenkinslocal -p 8080:8080 -p 50000:50000 --mount type=volume,src=jenkinsvl,dst=/var/jenkins_home jenkins/jenkins
```

## Paso 2: Acceder al panel de administración de Jenkins

- Abre un navegador web y accede a `http://localhost:8080` (o la dirección de tu máquina Docker si es diferente).
- Inicia sesión con tus credenciales de administrador.

## Paso 3: Instalar el plugin de Chuck Norris

- En el panel de administración, ve a "Manage Jenkins" (Administrar Jenkins) y selecciona "Manage Plugins" (Administrar Plugins).
- Ve a la pestaña "Available" (Disponibles) y busca "Chuck Norris".
- Selecciona el plugin de Chuck Norris y haz clic en "Install" (Instalar).

## Paso 4: Configurar y ejecutar el job

- Crea un nuevo job (Nueva Tarea) de tipo freestyle (Crear un proyecto de estilo libre) e ingresa un nombre random de tu eleccion.
- Inmediatamente podras visualizar la pagina de configuración del job, ve a la sección "Build" (Construcción).
- Añade un nuevo paso de construcción para ejecutar despues y elige "Active Chuck Norris" (Ejecutar patada circular de Chuck Norris).
- Guarda la configuración del job.

## Paso 5: Ejecutar el job

- Ejecuta el job manualmente o espera a que se ejecute según la configuración programada.
- Observa la salida del job para ver el mensaje de Chuck Norris.

## Paso 6: Disfruta del resultado

¡Felicidades! Has instalado el plugin de Chuck Norris en Jenkins y ejecutado con éxito el job. Ahora puedes disfrutar de los mensajes inspiradores de Chuck Norris en tus construcciones de Jenkins.
