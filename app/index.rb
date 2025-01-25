require 'discordrb'
require 'dotenv'

require_relative 'commands_loader'

Dotenv.load

bot = Discordrb::Bot.new(token: ENV['BOT_TOKEN'], intents: [:servers])

commands = CommandsLoader.load

commands.each do |name, command|
  bot.register_application_command(name, command.description, server_id: 1324771533197152390) do
  end

  bot.application_command(name) do |event|
    command.execute(event)
  end
end

bot.run
