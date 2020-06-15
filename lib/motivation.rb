# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'
require 'json'

require_relative '../lib/super_bot.rb'
require_relative 'telegram_bot.rb'

# Gets Motivation from the API class
class Motivation < SuperBot
  def random_selection
    @values.sample
  end
end
