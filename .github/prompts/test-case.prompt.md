# Caso de Prueba a automatizar

## Contexto

Necesito que implementes una automatización de API. En la URL `https://petstore.swagger.io/` puedes encontrar toda la documentación de Swagger de todos los endpoints disponibles.
La automatización debe cubrir el CRUD completo de la creación de Mascotas en el sistema, teniendo en cuenta que la URL base de la API es `https://petstore.swagger.io/v2` y el contenido que acepta es `application/json`.
Los flujos que debes automatizar son los siguientes:

Creación de una mascota (POST):

- Definir los datos de prueba para crear una nueva mascota en el sistema.
- Hacer una petición POST al endpoint `/pet` con los datos en formato JSON en el body.
- Comprobar que el código de la respuesta del endpoint sea 200.

Consulta de la mascota registrada (GET):

- Hacer una petición GET al endpoint `/pet/{petId}` enviando como parámetro de ruta el ID enviado en la petición POST.
- Comprobar que el código de la respuesta del endpoint sea 200.
- Comprobar que el nombre de la respuesta recibida es igual al nombre enviado en la petición POST.
- Comprobar que el status de la respuesta recibida es igual al status enviado en la petición POST.

Actualización de los datos de la mascota y Comprobar la actualización (PUT + GET):

- Definir los datos de prueba para actualizar la mascota creada anteriormente en el sistema.
- IMPORTANTE: El ID que se envía en los datos de prueba debe ser el ID de la mascota registrada anteriormente.
- Hacer una petición PUT al endpoint `/pet` con los datos de actualización en formato JSON en el body.
- Comprobar que el código de la respuesta del endpoint sea 200.
- Hacer una petición GET al endpoint `/pet/{petId}` enviando como parámetro de ruta el ID enviado en la petición PUT.
- Comprobar que el código de la respuesta del endpoint sea 200.
- Comprobar que el nombre de la respuesta recibida es igual al nombre enviado en la petición PUT.
- Comprobar que el status de la respuesta recibida es igual al status enviado en la petición PUT.

Eliminación del registro de una mascota y Comprobar su eliminación (DELETE + GET):

- Enviar una petición DELETE al endpoint `/pet/{petId}` con los siguientes parámetros de ruta:
  - petID: el ID del registro que se intentará eliminar del sistema, que debe ser igual al ID del registro generado en anteriores peticiones.
  - api_key: se debe enviar el valor `special-key` en este parámetro para que el endpoint procese la petición.
- Comprobar que el código de la respuesta del endpoint sea 200
- Enviar una petición GET al endpoint `pet` con el ID de la mascota que se acaba de eliminar.
- Comprobar que el código de la respuesta del endpoint sea 404.
- Comprobar que el mensaje "message" recibido en el body de la respuesta sea igual a "Pet not found".

## Datos de prueba

## Objetivo

Debes crear la automatización de estos escenarios mediante Karate DSL, generando los escenarios, sus pasos en Gherkin haciendo uso de sus palabras clave (GIVEN, WHEN, THEN, AND, etc) con la sintaxis propia de Karate, sus datos de prueba en archivos .json implementar el código necesario en los diferentes directorios del proyecto.
Finalmente debes asegurar que el proyecto permita la ejecución correcta de las pruebas y la generación del reporte HTML de Karate con los resultados de los escenarios y sus pasos de ejecución.
