# Salon Appointment System

This project is a PostgreSQL database schema designed to manage salon appointments, customers, and services. It was created as part of a certification project to demonstrate proficiency in database design, SQL, and PostgreSQL.

## Project Overview

The database consists of three main tables:

- **`appointments`**: Stores information about appointments, including customer, service, and time.
- **`customers`**: Stores information about customers, including their ID, phone number, and name.
- **`services`**: Lists available salon services, including their ID and name.

Each table includes primary keys and relevant attributes, along with constraints to maintain data integrity.

## Schema Details

### Tables

- **`appointments`**
  - `appointment_id`: Unique identifier for each appointment.
  - `customer_id`: Foreign key linking to the `customers` table.
  - `service_id`: Foreign key linking to the `services` table.
  - `time`: Time of the appointment.

- **`customers`**
  - `customer_id`: Unique identifier for each customer.
  - `phone`: Phone number of the customer.
  - `name`: Name of the customer.

- **`services`**
  - `service_id`: Unique identifier for each service.
  - `name`: Name of the service.

### Sequences

Each table with a primary key uses a sequence to generate unique identifiers:
- `appointments_appointment_id_seq`
- `customers_customer_id_seq`
- `services_service_id_seq`

### Constraints

- **Primary Key Constraints**: Ensure each record in the `appointments`, `customers`, and `services` tables is unique.
- **Unique Constraints**: Prevent duplicate phone numbers in the `customers` table.
- **Foreign Key Constraints**: Maintain relationships between tables, linking `appointments` to `customers` and `services`.

## Getting Started

To get started with this project:

1. **Clone the Repository**
   - Clone this repository to your local machine using your preferred Git client.

2. **Set Up the Database**
   - Ensure you have PostgreSQL installed on your system.
   - Use the provided SQL dump file (`salon.sql`) to create and populate the database. This file contains the schema definitions and sample data for the database.

3. **Explore the Database**
   - Connect to the PostgreSQL database using a client like `psql` or a graphical tool like pgAdmin.
   - Explore the tables and relationships defined in the schema.

4. **Query the Data**
   - Use SQL queries to interact with and analyze the data. Here are some example queries to get you started:
     - List all appointments and their scheduled times.
     - Find all services available in the salon.
     - Retrieve information about customers and their appointments.

## What I Learned

- Designing and implementing a relational database schema.
- Using PostgreSQL features such as sequences and constraints.
- Writing SQL queries to interact with and manage the database.
- Understanding relationships between different entities and how they are represented in a database.

## Acknowledgements

- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- FreeCodeCamp for providing the certification and project guidelines.
