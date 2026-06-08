# user_management
Nexus Java Backend


# User Management
## Nexus Java Backend

This module allows you to manage the user lifecycle within the platform. It provides the necessary endpoints to securely perform CRUD (Create, Read, Update, and Delete) operations.

---

## Technologies

- Java 17
- Spring Boot 3.14
- PostgreSQL 17
- Junit 5
- Mockito

## Architecture
 - Clean Architecture

## Employee Management Module

This module provides the REST controller for managing the employee lifecycle within the Nexus platform, enabling full CRUD operations.

### Technical Configuration
* **Controller:** `EmployeeController`
* **Package:** `com.nexus.app.user.controller`
* **Base Path:** `/api/v1/employees`
* **Access:** Supports cross-origin resource sharing (`@CrossOrigin` for any origin).

### API Endpoints

#### 1. Get all employees
* **Method:** `GET`
* **Path:** `/api/v1/employees`
* **Description:** Retrieves a list of all registered employees.

* **Successful Response:** `200 OK` -> `List<EmployeeResponseDTO>`

#### 2. Get an employee by ID
* **Method:** `GET`
* **Path:** `/api/v1/employees/{id}`
* **Description:** Searches for and returns the details of a specific employee using their numeric identifier.

* **Successful Response:** `200 OK` -> `EmployeeResponseDTO`

#### 3. Create a new employee
* **Method:** `POST`
* **Path:** `/api/v1/employees`
* **Description:** Registers a new employee in the system. Validates the required fields in the request body.

* **Request Body:** `EmployeeRequestDTO` (Validated with `@Valid`)
* **Successful Response:** `201 Created` -> `EmployeeResponseDTO`

#### 4. Update Employee
* **Method:** `PUT`
* **Path:** `/api/v1/employees/{id}`
* **Description:** Modifies the data of an existing employee using their ID and the new values ​​provided.

* * **Request Body:** `EmployeeRequestDTO` (Validated with `@Valid`)
* **Successful Response:** `200 OK` -> `EmployeeResponseDTO`

#### 5. Delete Employee
* **Method:** `DELETE`
* **Path:** `/api/v1/employees/{id}`
* **Description:** Permanently removes or terminates the employee associated with the entered ID.

* **Successful Response:** `204 No Content`

## Swagger
http://localhost:8181/swagger-ui/index.html