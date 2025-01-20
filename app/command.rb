class Command
  attr_reader name,
              command_type

  def initialize(name:, command_type:)
    @name = name
    @command_type = command_type
  end
end
