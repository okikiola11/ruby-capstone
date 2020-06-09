require 'telegram/bot'
require_relative 'music.rb'

class TelegramBot
  def initialize
    token = '1159757607:AAFnVnePPURyMERtcAa-JFLs6DtclDya5YY'

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}. Welcome to Music bot,  created by Okikiola Apelehin")
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
        when '/motivate'
          values = Music.new
          value = values.select_random
          bot.api.send_message(chat_id: message.chat.id, text: "#{value['text']}", date: message.date)
        else bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry,  #{message.from.first_name}")
        end
      end
    end

  end
end