#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/bot.rb'
require_relative '../lib/quote.rb'

TelegramBot.new
quote = Quote.new
playing = true
count = 1

loop do
  puts ' Welcome to My Jokes telegram bot '
  quote.create_request
  puts 'get random jokes'
  sleep 100
  count += 1
  playing = false
end
