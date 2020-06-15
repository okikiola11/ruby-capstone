#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/super_bot.rb'
require_relative '../lib/telegram_bot.rb'
require_relative '../lib/quote.rb'

TelegramBot.new
quote = Quote.new
motivation = Motivation.new
playing = true
count = 1

loop do
  puts ' Welcome to My Jokes telegram bot '
  quote.create_request
  puts 'get random jokes'
  sleep 3600
  motivation.create_request
  puts 'get motivational words'
  sleep 3600
  count += 1
  playing = false
end
