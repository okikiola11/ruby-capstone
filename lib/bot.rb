# frozen_string_literal: true

require 'telegram/bot'
require_relative 'quote.rb'

class TelegramBot
  # attr_reader :content
  # attr_writer :content

  def initialize
    token = '1159757607:AAFnVnePPURyMERtcAa-JFLs6DtclDya5YY'
    # @content = ''

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(text: "Hello, #{message.from.first_name}. Welcome to Telegram bot, created by Okikiola Apelehin")
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
        when '/quote'
          values = Quote.new
          value = values.create_request
          valuer = JSON.parse(value)
          # valuer.each do |key, val|
          #   if key.to_s == 'id'
          #     @content = " #{key} - #{val}"
          #     bot.api.send_message(text: @content, date: message.date)
          #   end
          # end
          bot.api.send_message(chat_id: message.chat.id, text: valuer['content'])
        else bot.api.send_message(text: "Invalid entry,  #{message.from.first_name}")
        end
      end
    end
  end
end
