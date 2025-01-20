class Command
  attr_reader :name,
              :description,
              :command_type,
              :handler

  def initialize(name:, description:, command_type:, handler:)
    @name = name
    @description = description
    @command_type = command_type
    @handler = handler
  end

  def execute(*args)
    @handler.call(*args)
  end
end
