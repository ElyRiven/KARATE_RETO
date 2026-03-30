# API Documentation - PetStore User Endpoints

## Base URL

```
https://petstore.swagger.io/v2
```

## Content Type

```
application/json
```

---

## Endpoints

### 1. Create User

| Method | URL     | Description                       |
| ------ | ------- | --------------------------------- |
| POST   | `/user` | Creates a new user in the system. |

#### Request Body

```json
{
  "id": 1,
  "username": "string",
  "firstName": "string",
  "lastName": "string",
  "email": "string",
  "password": "string",
  "phone": "string",
  "userStatus": 0
}
```

#### Responses

| HTTP Status | Message              | Response Body                                           |
| ----------- | -------------------- | ------------------------------------------------------- |
| 200         | successful operation | `{ "code": 200, "type": "unknown", "message": "<id>" }` |

---

### 2. Get User by Username

| Method | URL                | Description                                        |
| ------ | ------------------ | -------------------------------------------------- |
| GET    | `/user/{username}` | Returns the user data matching the given username. |

#### Path Parameters

| Parameter  | Type   | Description                           |
| ---------- | ------ | ------------------------------------- |
| `username` | string | The username of the user to retrieve. |

#### Responses

| HTTP Status | Message                   | Response Body                                                                                                                                                 |
| ----------- | ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 200         | successful operation      | `{ "id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0 }` |
| 400         | Invalid username supplied | —                                                                                                                                                             |
| 404         | User not found            | —                                                                                                                                                             |

---

### 3. Update User

| Method | URL                | Description                           |
| ------ | ------------------ | ------------------------------------- |
| PUT    | `/user/{username}` | Updates the data of an existing user. |

#### Path Parameters

| Parameter  | Type   | Description                         |
| ---------- | ------ | ----------------------------------- |
| `username` | string | The username of the user to update. |

#### Request Body

```json
{
  "id": 1,
  "username": "string",
  "firstName": "string",
  "lastName": "string",
  "email": "string",
  "password": "string",
  "phone": "string",
  "userStatus": 0
}
```

#### Responses

| HTTP Status | Message               | Response Body                                           |
| ----------- | --------------------- | ------------------------------------------------------- |
| 200         | successful operation  | `{ "code": 200, "type": "unknown", "message": "<id>" }` |
| 400         | Invalid user supplied | —                                                       |
| 404         | User not found        | —                                                       |

---

### 4. Delete User

| Method | URL                | Description                       |
| ------ | ------------------ | --------------------------------- |
| DELETE | `/user/{username}` | Deletes an existing user account. |

#### Path Parameters

| Parameter  | Type   | Description                         |
| ---------- | ------ | ----------------------------------- |
| `username` | string | The username of the user to delete. |

#### Responses

| HTTP Status | Message                   | Response Body |
| ----------- | ------------------------- | ------------- |
| 200         | successful operation      | —             |
| 400         | Invalid username supplied | —             |
| 404         | User not found            | —             |
