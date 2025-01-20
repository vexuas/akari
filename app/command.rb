class Command
  attr_reader name,
              description,
              command_type,
              execute

  def initialize(name:, description:, command_type:, execute:)
    @name = name
    @description = description
    @command_type = command_type
    @execute = execute
  end
end
