#!/usr/bin/env bash

echo "Notifying stakeholders..."

emailNotification() {
  echo "Sending pipeline success email notification securely..."

  curl --url 'smtps://://gmail.com' \
    --ssl-reqd \
    --mail-from "${SMTP_USER}" \
    --mail-rcpt 'Neha.Chaturvedi181993.nc@gmail.com' \
    --user "${SMTP_USER}:${SMTP_PASS}" \
    -T

  echo "Email notification sent successfully."
}

emailNotification
if [ $? -eq 0 ]; then
    echo "Email notification sent successfully."
else
    echo "Failed to send email notification. Exiting."
    exit 1
fi
