require 'discordrb'
require './config.rb'
require './ruby.rb'

bot = Discordrb::Bot.new token: TOKEN, client_id: CLIENT

bot.message(with_text: '!rb print') do |event|
  event.respond PRINT_ANSWER
end

bot.message(with_text: '!rb puts') do |event|
    event.respond PRINT_ANSWER
  end
 
bot.run