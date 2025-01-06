require 'discordrb'
require 'dotenv'

Dotenv.load

bot = Discordrb::Bot.new(token: ENV['BOT_TOKEN'], intents: [:servers])

bot.register_application_command(:hello, 'Hello Command', server_id: 1324771533197152390) do
end

bot.application_command(:hello) do |event|
  event.respond(content: 'Hi! owo')
end

bot.run
