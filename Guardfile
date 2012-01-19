$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'rwiki'

guard 'sprockets2', :sprockets => Rwiki::App.sprockets do
  watch(%r{^assets/.+$})
end
