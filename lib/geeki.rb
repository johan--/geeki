require 'bundler'
Bundler.require

require 'json'

module Geeki
  autoload :App, 'geeki/app'
  autoload :Version, 'geeki/version'

  def self.debug
    require 'ruby-debug'
    debugger
  end

end
