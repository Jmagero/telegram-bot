require_relative '../lib/bot.rb'
require_relative '../lib/quote.rb'
require 'dotenv'

Dotenv.load('token.env')

puts 'Helo!, Welcome to inspirational telegram bot'
puts '--------------------------------------------'
puts 'This is a bot to help you stay inspired while coding by giving you inspiration quotes'
puts '--------------------------------------------'
puts '....loading the bot is now online... use ctrl-c to stop the bot'

Bot.new
