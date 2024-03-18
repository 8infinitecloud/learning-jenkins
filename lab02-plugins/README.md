# Laboratorio de Jenkins 02 - Plugins
### Duración: 10 minutos.
<img src="https://www.jenkins.io/images/logos/cosmonaut/cosmonaut.png" alt="Texto alternativo" width="200"/>

# Instalacion y ejecucion de job con plugins


Un plugin en Jenkins es una extensión que agrega funcionalidad adicional al servidor de automatización Jenkins. Estas pequeñas aplicaciones pueden ser instaladas en Jenkins para agregar características como integraciones con herramientas externas, nuevos tipos de proyectos, notificaciones, y más.

Este laboratorio te guiará a través de los pasos para instalar el plugin de Chuck Norris en Jenkins y ejecutarlo para darle un paso final divertido a nuestros Jobs.

<img src="https://github.com/munozhassel/jenkins-learning/blob/main/img/jenkins-labs-lab-02.1.chucknorris_alert.jpg" alt="Texto alternativo">

## Paso 1: Iniciar Jenkins

Si aún no has iniciado Jenkins, asegúrate de ejecutar el contenedor de Docker para Jenkins, si eliminaste el contenedor deberas volver a ejecutar el comando:

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
- Ve a la pestaña "Installed" (Instalados) para ver una lista de todos los plugins instalados en Jenkins. Busca el plugin de Chuck Norris en la lista. Si aparece en la lista, significa que se instaló correctamente.

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

De acuerdo a las necesidades de las automatizaciones o flujos de trabajos que estemos por construir suele crearse plugins oficiales de diferentes soluciones o por colaboradores que aportan a la comunidad de Jenkins para agilizar procesos. Aqui tienes una lista de plugins para DevOps: https://www.opsera.io/blog/ace-your-devops-game-with-this-ultimate-list-of-plugins-in-jenkins en la cual puedes ver su finalidad y uso.