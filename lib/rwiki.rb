require 'sinatra'
require 'sinatra/base'
require 'erb'

module Rwiki
  autoload :App, 'rwiki/app'
  autoload :Version, 'rwiki/version'

  def self.debug
    require 'ruby-debug'
    debugger
  end

end

