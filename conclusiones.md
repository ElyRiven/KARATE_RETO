# Hallazgos y Conclusiones

En el presente proyecto se puede evidenciar la siguiente información sobre la automatización realizada sobre la API `https://petstore.swagger.io/`:

- La API pública tiene los endpoint objetivos de CRUD de usuarios activos y funcionando correctamente.
- La API recibe el payload de sus endpoints en el formato `application/json`.
- Todos los endpoints retornan un código 200 cuando la petición es realizada correctamente.
- Los endpoints de creación (POST) y actualización (PUT) de usuarios reciben un payload en su petición.
- Los endpoints de consulta (GET), actualización (PUT) y eliminación (DELETE) de usuarios reciben el valor `username` como parámetro de ruta.
- Para la creación de usuarios, el valor "username" es mandatorio, ya que es el único parámetro por el que los demás endpoints pueden identificar un registro en el sistema.
- Para la actualización de usuarios, el objeto JSON que se envía con los datos actualizados puede omitir valores para actualizar campos concretos de un registro en el sistema.
