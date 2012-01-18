require 'sinatra'
require 'sinatra/base'
require 'erb'
require 'json'

module Rwiki
  autoload :App, 'rwiki/app'
  autoload :Version, 'rwiki/version'

  def self.debug
    require 'ruby-debug'
    debugger
  end

end
