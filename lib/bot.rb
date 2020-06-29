# rubocop:disable Layout/LineLength
require 'telegram/bot'
require_relative 'quote.rb'

class Bot
  def initialize
    token = '833112055:AAGQxUtUr1zso5tHk3vKJcVCex3ViMLtNm0'

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name},Welcome to inspiration chat bot.Use /start to start the chat bot, /stop to end the chat bot and /quote to get an inspiration quote")
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
        when '/quote'
          result = Quote.new
          new_result = result.select_random
          quote = new_result['quote']
          source = new_result['source']
          bot.api.send_message(chat_id: message.chat.id, text: source.to_s, date: message.date)
          bot.api.send_message(chat_id: message.chat.id, text: quote.to_s, date: message.date)
        end
      end
    end
  end
end
# rubocop:enable Layout/LineLength
