#!/usr/bin/env bash

echo "Notifying stakeholders..."

emailNotification() {
    echo "Sending email notification..."
        # Replace with your email sending command or script
        mail to: 'Neha.Chaturvedi181993.nc@gmail.com',
        subject: "Pipeline Success: ${env.JOB_NAME} [Build #${env.BUILD_NUMBER}]",
        body: "Hi Neha,\n\nThe build and deployment completed successfully.\n\nView details here: ${env.BUILD_URL}"
}

emailNotification
if [ $? -eq 0 ]; then
    echo "Email notification sent successfully."
else
    echo "Failed to send email notification. Exiting."
    exit 1
fi
