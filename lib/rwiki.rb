require 'bundler'
Bundler.require

require 'json'

module Rwiki
  autoload :App, 'rwiki/app'
  autoload :Version, 'rwiki/version'

  def self.debug
    require 'ruby-debug'
    debugger
  end

end
