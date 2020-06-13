# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class Motivation
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

  def random_selection
    @values = @values.sample
    @values
  end
end
