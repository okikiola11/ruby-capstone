# frozen_string_literal: true

require 'telegram/bot'
require 'json'
require 'uri'
require 'net/http'
require 'openssl'

# This is the super inheritance class
class SuperBot
  def initialize
    @values = create_request
  end

  def create_request
    url = 'https://type.fit/api/quotes'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end
end
