#!/usr/bin/env ruby

require_relative '../lib/bot.rb'
require_relative '../lib/quote.rb'

bots = TelegramBot.new
quote = Quote.new
playing = true
count = 1

loop do
  puts " Welcome to My Jokes telegram bot "
  bots
  quote.create_request
  puts "get random jokes"
  sleep 100
  count += 1
  playing = false
end

# start = true
# count += 1
# loop do
#   bot.create_request
#   puts "get random motivation quotes"
#   sleep 3600
#   bot.select_random
#   sleep 3600
#   count += 1
#   i += 1
#   start = false
# end
