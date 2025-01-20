require 'discordrb'
require 'dotenv'

require_relative './command'

Dotenv.load

bot = Discordrb::Bot.new(token: ENV['BOT_TOKEN'], intents: [:servers])

def hello_handler(event)
  event.respond(content: 'Hi! owo')
end

hello_command = Command.new(name: :hello, description: 'Hello Command', command_type: 'misc',
                            handler: method(:hello_handler))

bot.register_application_command(hello_command.name, hello_command.description, server_id: 1324771533197152390) do
end

bot.application_command(hello_command.name) do |event|
  hello_command.execute(event)
end

bot.run
