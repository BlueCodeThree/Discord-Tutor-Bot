require 'discordrb'
require './config.rb'

bot = Discordrb::Bot.new token: TOKEN, client_id: CLIENT

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run