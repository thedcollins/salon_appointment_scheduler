# My Salon Appointment System

This repository contains the source code and database schema for a simple salon appointment system built using Bash and PostgreSQL. The system allows users to book various salon services through a command-line interface.

## Project Overview

The project is designed to help users schedule appointments for different salon services. It includes:

- **Bash Script**: `salon.sh` – A script for interacting with users, booking appointments, and managing customer data.
- **SQL Database Dump**: `salon.sql` – A SQL script to set up the database schema and initial data.

## Features

- **Service Booking**: Users can select from various salon services such as haircuts, nail services, massages, and more.
- **Customer Management**: Handles new and existing customer records.
- **Appointment Scheduling**: Allows users to book appointments at their desired time.

## Installation

To set up the project locally, follow these steps:

1. **Clone the Repository**
  ```
  git clone https://github.com/yourusername/salon-appointment-system.git
  cd salon-appointment-system
  ```
2. **Set Up the PostgreSQL Database**

- Ensure PostgreSQL is installed and running.
- Create a new database and user as needed.
- Run the SQL script to set up the database schema and initial data:

  ```
  psql -U yourusername -f salon.sql
  ```

3. **Run the Bash Script**

- Make the script executable:

  ```
  chmod +x salon.sh
  ```

- Execute the script:

  ```
  ./salon.sh
  ```

## Usage

1. Run `salon.sh` to start the application.
2. Follow the prompts to select a service, provide a phone number, and schedule an appointment.

## Script Functions

- **MAIN_MENU**: Displays the main menu and handles user input.
- **HAIR_SERVICES**: Handles appointment booking for hair services.
- **NAIL_SERVICES**: Handles appointment booking for nail services.
- **SKIN_AND_FACIAL_SERVICES**: Handles appointment booking for skin and facial services.
- **MASSAGE_SERVICES**: Handles appointment booking for massage services.
- **MAKEUP_SERVICES**: Handles appointment booking for makeup services.
- **BODY_TREATMENTS**: Handles appointment booking for body treatments.
- **MENS_GROOMING_SERVICES**: Handles appointment booking for men’s grooming services.
- **SPA_PACKAGES**: Handles appointment booking for spa packages.
- **OTHER_SPECIALTY_SERVICES**: Handles appointment booking for other specialty services.
- **EXIT**: Exits the application.

## Database Schema

The database schema consists of three tables:

- **`customers`**: Stores customer information.
- **`services`**: Lists available services.
- **`appointments`**: Records appointments, linking customers and services.

## Contributing

Feel free to submit issues or pull requests if you have any improvements or fixes.

## Acknowledgements

- Inspired by the need for a simple and effective salon appointment system.
