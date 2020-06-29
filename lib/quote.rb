require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Quote
  attr_reader :results

  def initialize
    @results = make_request
  end

  def select_random
    @results = @results.sample
  end

  def make_request
    url = 'https://philosophy-quotes-api.glitch.me/quotes'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end
end
