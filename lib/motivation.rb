# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'
require 'json'

require_relative '../lib/super_bot.rb'
require_relative 'telegram_bot.rb'

# Creates a new Client instance which proxies the requests from the API
class Motivation < SuperBot
  def random_selection
    @values.sample
  end
end
