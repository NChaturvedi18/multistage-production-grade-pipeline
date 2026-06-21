#!/usr/bin/env bash

echo "Notifying stakeholders..."

emailNotification() {
  echo "Sending pipeline success email notification securely..."

  curl --url 'smtps://smtp.gmail.com:465' \
    --ssl-reqd \
    --mail-from "${SMTP_USER}" \
    --mail-rcpt 'Neha.Chaturvedi181993.nc@gmail.com' \
    --user "${SMTP_USER}:${SMTP_PASS}" \
    -T - <<EOF
From: Jenkins Automation <${SMTP_USER}>
To: Neha <Neha.Chaturvedi181993.nc@gmail.com>
Subject: Pipeline Success!

Build and deployment completed successfully.
EOF

  echo "Email notification sent successfully."
}

emailNotification
if [ $? -eq 0 ]; then
    echo "Email notification sent successfully."
else
    echo "Failed to send email notification. Exiting."
    exit 1
fi

