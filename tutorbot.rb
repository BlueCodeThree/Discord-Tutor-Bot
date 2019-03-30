# Discord Programming Tutor Bot
# by Carlie Hamilton
# https://github.com/BlueCodeThree/Discord-Tutor-Bot

# TODO
# random welcome message if you say hi to the bot
# maybe some jokes? Programmer jokes? Programmer memes?

require 'discordrb'
require './config.rb'
require './languages/ruby.rb'
require './languages/javascript.rb'
require './languages/commands.rb'

prefix = "!"

# Bot info
bot = Discordrb::Bot.new token: TOKEN, client_id: CLIENT
bot.ready do |event|
    puts "Logged in as #{bot.profile.username} (ID:#{bot.profile.id}) | #{bot.servers.size} servers"
end

bot.message(with_text: prefix + 'help') do |event|
    event.respond ALL_COMMANDS      
end

# GENERAL FUN
bot.message(with_text: 'hi bot') do |event|
    event.respond "Hi #{event.author.mention}!"
end

## JAVASCRIPT -- alphabetical order
bot.message(with_text: prefix + 'js comment') do |event|
    event.respond JS_COMMENT_ANSWER
end

bot.message(with_text: prefix + 'js if') do |event|
    event.respond JS_IF_ANSWER
end

## RUBY -- hopefully in alphabetical order
bot.message(with_text: prefix + 'rb array') do |event|
    event.respond ARRAY_ANSWER
end

bot.message(with_text: prefix + 'rb case') do |event|
    event.respond IF_ANSWER
end

bot.message(with_text: prefix + 'rb conditional') do |event|
    event.respond LOOP_ANSWER
end

bot.message(with_text: prefix + 'rb convert') do |event|
    event.respond CONVERT_ANSWER
end

bot.message(with_text: prefix + 'rb each') do |event|
    event.respond LOOP_ANSWER
end

bot.message(with_text: prefix + 'rb exceptions') do |event|
    event.respond EXCEPTION_ANSWER
end

bot.message(with_text: prefix + 'rb for') do |event|
    event.respond LOOP_ANSWER
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

bot.message(with_text: prefix + 'rb loop') do |event|
    event.respond LOOP_ANSWER
end

bot.message(with_text: prefix + 'rb next') do |event|
    event.respond LOOP_ANSWER
end

bot.message(with_text: prefix + 'rb print') do |event|
  event.respond PRINT_ANSWER
end

bot.message(with_text: prefix + 'rb puts') do |event|
    event.respond PRINT_ANSWER
  end

  bot.message(with_text: prefix + 'rb range') do |event|
    event.respond LOOP_ANSWER
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

bot.message(with_text: prefix + 'rb until') do |event|
    event.respond LOOP_ANSWER
end

bot.message(with_text: prefix + 'rb while') do |event|
    event.respond LOOP_ANSWER
end
 
# Wake up the bot!
bot.run
event.bot.game=('with your heart')