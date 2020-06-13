# frozen_string_literal: true

require 'telegram/bot'
require 'json'
require 'uri'
require 'net/http'
require 'openssl'

require_relative 'bot.rb'

# disable rubocop: Metric/MethodLength, Metric/AbcSize

# Gets quote from the API class
class Quote
  @values = nil

  def initialize
    @values = create_request
  end

  def create_request
    url = URI('https://joke3.p.rapidapi.com/v1/joke')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = 'joke3.p.rapidapi.com'
    request['x-rapidapi-key'] = '1e8926f418msh328d1f243d23caep13d755jsn72dc4c0abbe7'

    response = http.request(request)
    response.read_body
  end
end
# disable rubocop: Metric/MethodLength, Metric/AbcSize
