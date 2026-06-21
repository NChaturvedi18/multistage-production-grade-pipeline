echo "Notifying stakeholders..."

emailNotification() {
    echo "Sending email notification..."
        # Replace with your email sending command or script
        echo "Build and deployment completed successfully." | mail -s "Notification" Neha.Chaturvedi181993.nc@gmail.com
}

emailNotification()
if [ $? -eq 0 ]; then
    echo "Email notification sent successfully."
else
    echo "Failed to send email notification. Exiting."
    exit 1
fi
