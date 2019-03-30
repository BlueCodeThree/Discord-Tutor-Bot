# Discord Programming Tutor Bot
# by Carlie Hamilton
# https://github.com/BlueCodeThree/Discord-Tutor-Bot

require 'discordrb'
require './config.rb'
require './ruby.rb'

prefix = "!"

# Bot info
bot = Discordrb::Bot.new token: TOKEN, client_id: CLIENT

## RUBY -- hopefully in alphabetical order
bot.message(with_text: prefix + 'rb case') do |event|
    event.respond IF_ANSWER
end

bot.message(with_text: prefix + 'rb convert') do |event|
    event.respond CONVERT_ANSWER
end

bot.message(with_text: prefix + 'rb function') do |event|
    event.respond FUNCTION_ANSWER
end

bot.message(with_text: prefix + 'rb gets') do |event|
    event.respond GETS_ANSWER
end

bot.message(with_text: prefix + 'rb if') do |event|
    event.respond IF_ANSWER
end

bot.message(with_text: prefix + 'rb input') do |event|
    event.respond GETS_ANSWER
end

bot.message(with_text: prefix + 'rb length') do |event|
    event.respond LENGTH_ANSWER
end

bot.message(with_text: prefix + 'rb print') do |event|
  event.respond PRINT_ANSWER
end

bot.message(with_text: prefix + 'rb puts') do |event|
    event.respond PRINT_ANSWER
  end

bot.message(with_text: prefix + 'rb string') do |event|
event.respond STRING_ANSWER
end

bot.message(with_text: prefix + 'rb time') do |event|
event.respond TIME_ANSWER
end

bot.message(with_text: prefix + 'rb unless') do |event|
event.respond IF_ANSWER
end
 
# Wake up the bot!
bot.run