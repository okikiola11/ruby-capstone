# frozen_string_literal: true

require_relative '../lib/quote.rb'

describe 'Quote' do
  describe '#create_request' do
    let(:req) { Quote.new }
    let(:req_json) { req.create_request }

    it 'should return json response when the request is sucessful' do
      expect(req_json.class).to eql(String)
    end

    it 'should return an array response is not empty' do
      expect(req_json.length).not_to eql(0)
    end
  end
end
