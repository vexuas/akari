require 'discordrb'
require 'dotenv'

require_relative './command'
require_relative './commands/hello'

Dotenv.load

bot = Discordrb::Bot.new(token: ENV['BOT_TOKEN'], intents: [:servers])

hello_command = Hello.command

bot.register_application_command(hello_command.name, hello_command.description, server_id: 1324771533197152390) do
end

bot.application_command(hello_command.name) do |event|
  hello_command.execute(event)
end

bot.run
