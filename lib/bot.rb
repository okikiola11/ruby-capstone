# frozen_string_literal: true

require 'telegram/bot'
require_relative 'quote.rb'
require_relative 'motivation.rb'

# rubocop:disable Metric/AbcSize, Metric/MethodLength, Layout/LineLength

# Gets the TelegramBot from the Telegram Client class
class TelegramBot
  def initialize
    token = '1159757607:AAFnVnePPURyMERtcAa-JFLs6DtclDya5YY'

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}. Welcome to Telegram bot, created by Okikiola Apelehin. Use /start to start, /quote to get quotes and / motivation to get motivations. Enjoy!!! ")
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
        when '/quote'
          values = Quote.new
          value = values.create_request
          valuer = JSON.parse(value)

          bot.api.send_message(chat_id: message.chat.id, text: (valuer['content']).to_s, date: message.date)
        when '/motivation'
          values = Motivation.new
          value = values.random_selection

          bot.api.send_message(chat_id: message.chat.id, text: (value['text']).to_s, date: message.date)

        else bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry,  #{message.from.first_name}")
        end
      end
    end
  end
  # rubocop:enable Metric/AbcSize, Metric/MethodLength, Layout/LineLength
end
