require_relative "../command"

Hello = Command.new(
  name: :hello,
  description: "Command that says hello",
  command_type: "misc"
) do |context|
  event = context[:event]
  event.respond(content: "Hi! owo")
end
