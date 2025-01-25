class Command
  attr_reader :name,
              :description,
              :command_type,
              :handler

  def initialize(name:, description:, command_type:, &block)
    @name = name
    @description = description
    @command_type = command_type
    @handler = block
  end

  def execute(*args)
    @handler&.call(*args)
  end
end
