require "pathname"

module CommandsLoader
  def self.load
    commands = {}

    # Load all command files from the `commands` directory
    Pathname.new(File.dirname(__FILE__)).join("commands").each_child do |file|
      next unless file.extname == ".rb"

      require_relative file
      command = Object.const_get(file.basename(".rb").to_s.capitalize)
      commands[command.name] = command
    end

    commands
  end
end
