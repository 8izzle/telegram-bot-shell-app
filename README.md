# Telegram Bot Shell App

This repository contains a simple shell script that interacts with the Telegram Bot API to send messages, send files, and retrieve updates. This script uses `bash` and `curl`.

## Features

- Send messages to a Telegram chat
- Send files to a Telegram chat
- Retrieve updates from the bot

## Requirements

- `bash`
- `curl`

## Installation

1. **Clone the repository**:

    ```sh
    git clone https://github.com/yourusername/telegram-bot-shell-script.git
    cd telegram-bot-shell-script
    ```

2. **Make the script executable**:

    ```sh
    chmod +x telegram_bot.sh
    ```

## Configuration

1. **Get your Telegram Bot API Token**:
    - Create a new bot using the [BotFather](https://core.telegram.org/bots#botfather) on Telegram.
    - Copy the token provided by BotFather.

2. **Get your Chat ID**:
    - Start a chat with your bot and send any message.
    - Open your web browser and visit: `https://api.telegram.org/bot<YOUR_BOT_API_TOKEN>/getUpdates`
    - Look for `"chat":{"id":YOUR_CHAT_ID}` in the JSON response.

3. **Edit the script**:
    - Open `telegram_bot.sh` in a text editor.
    - Replace `YOUR_BOT_API_TOKEN` with your actual Telegram Bot API token.
    - Replace `YOUR_CHAT_ID` with your actual chat ID.

## Usage

Run the script:

```sh
./telegram_bot.sh
