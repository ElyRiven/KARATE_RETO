# Automatización de Pruebas - PetStore API (User CRUD)

## Descripción

Este proyecto implementa la automatización de pruebas de API REST para el módulo de **gestión de usuarios** de la [PetStore API](https://petstore.swagger.io/). Cubre el flujo completo CRUD (Crear, Leer, Actualizar y Eliminar) de un usuario, validando los códigos de respuesta HTTP y la integridad de los datos retornados por cada endpoint.

---

## Stack Tecnológico

| Tecnología | Versión |
| ---------- | ------- |
| Java       | 17      |
| Gradle     | 9.4.0   |
| Karate DSL | 1.4.1   |
| JUnit 5    | 5.x     |

---

## Estructura del Proyecto

```
KARATE_RETO/
├── build.gradle                          # Configuración de dependencias y tareas de Gradle
├── settings.gradle                       # Nombre del proyecto Gradle
├── gradle.properties                     # Propiedades globales de Gradle
├── API_DOCUMENTATION.md                  # Documentación de los endpoints de la API probados
└── src/
    └── test/
        └── java/
            ├── karate-config.js          # Configuración global de Karate (baseUrl, endpoints)
            └── users/                    # Módulo de pruebas para el endpoint de usuarios
                ├── UsersRunner.java      # Runner JUnit5 que ejecuta la suite de pruebas
                ├── user-crud.feature     # Escenarios Gherkin del CRUD de usuarios
                ├── user-data.json        # Datos de prueba para la creación del usuario (POST)
                └── update-user-data.json # Datos de prueba para la actualización del usuario (PUT)
```

---

## Ejecución del Proyecto

### Prerrequisitos

- Tener **Java 17** instalado y configurado en el `PATH`.
- Tener **Gradle** instalado, o usar el wrapper incluido en el proyecto (`gradlew`).
- Conexión a internet para acceder a la API de PetStore.

### Comandos de Ejecución

Desde la raíz del proyecto, ejecuta uno de los siguientes comandos:

**Con Gradle instalado globalmente:**

```bash
gradle clean test
```

**Con el wrapper de Gradle incluido en el proyecto:**

```bash
./gradlew clean test
```

### Resultados

Al finalizar la ejecución, Karate genera automáticamente un reporte HTML con los resultados detallados de cada escenario y sus pasos. El reporte se encuentra en:

```
build/karate-reports/karate-summary.html
```

Abre ese archivo en un navegador para visualizar el reporte completo con el estado de cada escenario (passed/failed), tiempos de ejecución y detalles de cada paso.
