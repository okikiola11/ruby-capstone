#!/usr/bin/env ruby

require_relative '../lib/bot.rb'
require_relative '../lib/music.rb'

bot = TelegramBot.new

start = true
count += 1
loop do
  bot.create_request
  puts "get random motivation quotes"
  sleep 3600
  bot.select_random
  sleep 3600
  count += 1
  i += 1
  start = false
end
