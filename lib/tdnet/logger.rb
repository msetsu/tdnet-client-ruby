require 'logger'

module TDnet
  class Logger < ::Logger
    def self.default
      @logger ||= begin
        logger = new STDOUT
        logger.level = Logger::WARN
        logger
      end
    end
  end
end