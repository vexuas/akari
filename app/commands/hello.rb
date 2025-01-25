require_relative "../command"

Hello = Command.new(
  name: :hello,
  description: "Command that says hello"
) do |context|
  event = context[:event]
  event.respond(content: "Hi! owo")
end
