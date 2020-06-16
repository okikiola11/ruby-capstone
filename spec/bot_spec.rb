# frozen_string_literal: true

require_relative '../lib/quote.rb'
require_relative '../lib/motivation.rb'

describe 'SuperBot' do
  describe '#create_request' do
    let(:req) { SuperBot.new }
    let(:req_json) { req.create_request }

    it 'should return json response when the request is sucessful' do
      expect(req_json.class).to eql(Array)
    end

    it 'should return an array response should not be empty' do
      expect(req_json.length).not_to eql(0)
    end
  end
end

describe 'Quote' do
  describe '#create_request' do
    let(:req) { Quote.new }
    let(:req_json) { req.create_request }

    it 'should return json response when the request is sucessful' do
      expect(req_json.class).to eql(String)
    end

    it 'should return an array response should not be empty' do
      expect(req_json.length).not_to eql(0)
    end
  end
end

describe 'Motivation' do
  describe '#create_request' do
    let(:req) { Motivation.new }
    let(:req_json) { req.create_request }

    it 'should return json response when the request is sucessful' do
      expect(req_json.class).to eql(Array)
    end

    it 'should return an array response should not be empty' do
      expect(req_json.length).not_to eql(0)
    end
  end

  describe '#random_selection' do
    let(:selection) { Motivation.new }
    let(:req_selection) { selection.random_selection }

    it 'should return an Hash' do
      expect(req_selection.class).to eql(Hash)
    end

    it 'should return a key and a value' do
      expect(req_selection.length).to eql(2)
    end
  end
end
