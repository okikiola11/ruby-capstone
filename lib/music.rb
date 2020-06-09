require 'telegram/bot'
require 'json'

require_relative 'bot.rb'

class Music
  @values = nil

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

  def select_random
    @values = @values.sample
    return @values
  end
end
