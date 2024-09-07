#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c" 

echo -e "\n~~~~~ MY SALON ~~~~~\n"

MAIN_MENU(){
  # Get menu
  DISPLAY_MENU=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
  echo "Welcome to My Salon, how can I help you?"
  echo -e "\n$DISPLAY_MENU" | sed -r 's/^[ ]+//; s/ \| /) /' | sed '$a\10) Exit'
  
  # Read user input
  read SERVICE_ID_SELECTED

  # Handle user selection
  case $SERVICE_ID_SELECTED in
    1) HAIR_SERVICES ;;
    2) NAIL_SERVICES ;;
    3) SKIN_AND_FACIAL_SERVICES ;;
    4) MASSAGE_SERVICES ;;
    5) MAKEUP_SERVICES ;;
    6) BODY_TREATMENTS ;;
    7) MENS_GROOMING_SERVICES ;;
    8) SPA_PACKAGES ;;
    9) OTHER_SPECIALTY_SERVICES ;;
    10) EXIT ;;
    *) MAIN_MENU "Please enter a valid option." ;;
  esac
}

# Function to handle hair services
HAIR_SERVICES() {
  echo -e "\nYou have selected Hair Services."
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  # If customer doesn't exist
  if [[ -z $CUSTOMER_NAME ]]
  then
    # Get new customer name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME

    # Insert new customer
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  # Get customer_id
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  # Ask for service time
  echo -e "\nWhat time would you like your cut?"
  read SERVICE_TIME

  # Insert appointment
  INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  # Get service
  SERVICE=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")

  # Confirm appointment
  echo -e "\nI have put you down for a $SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."
}

# Function to handle nail services
NAIL_SERVICES() {
  echo -e "\nYou have selected Nail Services."
  # Add specific actions for nail services here
  # For example, display a list of nail services
}

# Function to handle skin and facial services
SKIN_AND_FACIAL_SERVICES() {
  echo -e "\nYou have selected Skin and Facial Services."
  # Add specific actions for skin and facial services here
  # For example, display a list of skin and facial services
}

# Function to handle massage services
MASSAGE_SERVICES() {
  echo -e "\nYou have selected Massage Services."
  # Add specific actions for massage services here
  # For example, display a list of massage services
}

# Function to handle makeup services
MAKEUP_SERVICES() {
  echo -e "\nYou have selected Makeup Services."
  # Add specific actions for makeup services here
  # For example, display a list of makeup services
}

# Function to handle body treatments
BODY_TREATMENTS() {
  echo -e "\nYou have selected Body Treatments."
  # Add specific actions for body treatments here
  # For example, display a list of body treatments
}

# Function to handle men’s grooming services
MENS_GROOMING_SERVICES() {
  echo -e "\nYou have selected Men’s Grooming Services."
  # Add specific actions for men’s grooming services here
  # For example, display a list of grooming services
}

# Function to handle spa packages
SPA_PACKAGES() {
  echo -e "\nYou have selected Spa Packages."
  # Add specific actions for spa packages here
  # For example, display a list of spa packages
}

# Function to handle other specialty services
OTHER_SPECIALTY_SERVICES() {
  echo -e "\nYou have selected Other Specialty Services."
  # Add specific actions for other specialty services here
  # For example, display a list of specialty services
}

# Function to handle exiting the menu
EXIT() {
  echo -e "\nThank you for visiting our salon. Have a great day!"
  # Exit the script
  exit 0
}

# Call the main menu
MAIN_MENU