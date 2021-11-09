# 5irechain Telegram Token Faucet

Set-up is super simple and straight-forward.

## Pre-requisites

1. A bot token , this can be obtained by chatting with BotFather on telegram. https://core.telegram.org/bots#6-botfather

2. A live 5irechain, and a wallet mnemonic with some balances. (This will be used to distribute the tokens)

3. The types.json file for your particular chain

## Installation

`npm i`

## Set-up

1. Copy the .env.example file as .env
2. Set all the .env vars in this file properly. Including your mnemonic key.
3. Copy over the correct `type.json` for your chain onto `src/types/types.json`. You can overwrite the current file since this is for the OAX chain.
4. If you want to change the Help or Error Messages, you can open `app.js` and make these changes

## Run

`npm run start`

## Usage

Either add your bot to a group chat, or directly send a message to your bot.

1. The `/help` command or `/start` command will send you the help text.

2. To request for tokens simple send `/request ADDRESS` where ADDRESS is your 5irechain address.
