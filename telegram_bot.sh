#!/bin/bash

# Replace with your Bot API Token
BOT_TOKEN="YOUR_BOT_API_TOKEN"
CHAT_ID="YOUR_CHAT_ID"

# Function to send a message
send_message() {
    local message="$1"
    curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
        -d "chat_id=${CHAT_ID}" \
        -d "text=${message}"
}

# Function to send a file
send_file() {
    local file_path="$1"
    curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendDocument" \
        -F "chat_id=${CHAT_ID}" \
        -F "document=@${file_path}"
}

# Function to get updates
get_updates() {
    local offset="$1"
    curl -s "https://api.telegram.org/bot${BOT_TOKEN}/getUpdates?offset=${offset}"
}

# Main menu
while true; do
    echo "1. Send Message"
    echo "2. Send File"
    echo "3. Get Updates"
    echo "4. Exit"
    read -p "Choose an option: " option

    case $option in
        1)
            read -p "Enter message: " message
            send_message "$message"
            ;;
        2)
            read -p "Enter file path: " file_path
            send_file "$file_path"
            ;;
        3)
            read -p "Enter offset (optional): " offset
            get_updates "$offset"
            ;;
        4)
            break
            ;;
        *)
            echo "Invalid option, please try again."
            ;;
    esac
done
