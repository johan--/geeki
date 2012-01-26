$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'geeki'

guard("sprockets2",
  :sprockets   => Geeki::App.sprockets,
  :assets_path => Geeki::App.assets_path,
  :precompile  => Geeki::App.precompile,
  :digest      => Geeki::App.digest_assets) do

  watch %r(^assets/.+$)
  watch "lib/geeki/app.rb"
end

guard 'coffeescript', :input => 'assets/javascripts/app.coffee', :output => 'public/assets' do
  watch %r(^assets/javascripts/app.coffee$)
end

guard 'coffeescript', :input => 'spec/javascripts', :output => 'public/spec' do
  watch %r(^spec/javascripts)
end
