require "ruby_bancbox/version"

require 'ruby_bancbox/configuration'
require 'ruby_bancbox/cfp'

module RubyBancbox
 class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
