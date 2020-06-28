require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Quote
  @results = nil

  def initialize
    @results = make_request
  end

  def make_request
    url = 'https://programming-quotes-api.herokuapp.com/quotes'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end

  def select_random
    @results = @results.sample
    @results
  end
end