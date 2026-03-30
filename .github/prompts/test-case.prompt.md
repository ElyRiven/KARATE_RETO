# Caso de Prueba a automatizar

## Contexto

Necesito que implementes una automatización de API. En la URL `https://petstore.swagger.io/` puedes encontrar toda la documentación de Swagger de todos los endpoints disponibles.
La automatización debe cubrir el CRUD completo de la creación de Usuarios en el sistema, teniendo en cuenta que la URL base de la API es `https://petstore.swagger.io/v2` y el contenido que acepta es `application/json`.
Los flujos que debes automatizar son los siguientes:

Creación de un Usuario (POST):

- Definir los datos de prueba para crear un nuevo usuario en el sistema.
- Hacer una petición POST al endpoint `/user` con los datos en formato JSON en el body.
- Comprobar que el código de la respuesta del endpoint sea 200.

Consulta del usuario registrado (GET):

- Hacer una petición GET al endpoint `/user/{username}` enviando como parámetro de ruta el username enviado en la petición POST.
- Comprobar que el código de la respuesta del endpoint sea 200.
- Comprobar que el nombre de la respuesta recibida es igual al nombre enviado en la petición POST.
- Comprobar que el correo de la respuesta recibida es igual al nombre enviado en la petición POST.

Actualización de los datos del usuario(PUT):

- Definir los datos de prueba para actualizar el nombre y el correo del usuario.
- IMPORTANTE: El username que se envía como parámetro de ruta debe ser igual al enviado en la petición POST.
- Hacer una petición PUT al endpoint `/user/{username}` con los datos de actualización en formato JSON en el body.
- Comprobar que el código de la respuesta del endpoint sea 200.

Consulta del usuario actualizado (GET):

- Hacer una petición GET al endpoint `/user/{username}` enviando como parámetro de ruta el username enviado en la petición PUT.
- Comprobar que el código de la respuesta del endpoint sea 200.
- Comprobar que el nombre de la respuesta recibida es igual al nombre enviado en la petición PUT.
- Comprobar que el correo de la respuesta recibida es igual al status enviado en la petición PUT.

Eliminación de una cuenta de usuario (DELETE):

- Enviar una petición DELETE al endpoint `/user/{username}` con los siguientes parámetros de ruta:
  - username: el username del registro que se intentará eliminar del sistema, que debe ser igual al username del registro generado en anteriores peticiones.
- Comprobar que el código de la respuesta del endpoint sea 200

## Datos de prueba

## Objetivo

Debes crear la automatización de estos escenarios mediante Karate DSL, generando los escenarios, sus pasos en Gherkin haciendo uso de sus palabras clave (GIVEN, WHEN, THEN, AND, etc) con la sintaxis propia de Karate, sus datos de prueba en archivos .json implementar el código necesario en los diferentes directorios del proyecto.
Finalmente debes asegurar que el proyecto permita la ejecución correcta de las pruebas y la generación del reporte HTML de Karate con los resultados de los escenarios y sus pasos de ejecución.
