$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'geeki'

# compile app javascripts
guard("sprockets2",
  :sprockets   => Geeki::App.sprockets,
  :assets_path => Geeki::App.assets_path,
  :precompile  => Geeki::App.precompile,
  :digest      => Geeki::App.digest_assets,
  :clean => false) do

  watch %r(^assets/.+$)
  watch "lib/geeki/app.rb"
end

# keep app.js in the separate file
guard 'coffeescript', :input => 'assets/javascripts/app.coffee', :output => 'public/assets' do
  watch %r(^assets/javascripts/app.coffee$)
end

# compile javascript specs
guard 'coffeescript', :input => 'spec/javascripts', :output => 'public/spec' do
  watch %r(^spec/javascripts)
end
