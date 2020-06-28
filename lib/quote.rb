require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Quote
  @results = nil

  def initialize
    @results = make_request
  end

end