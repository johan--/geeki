$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'rwiki'

guard("sprockets2",
  :sprockets   => Rwiki::App.sprockets,
  :assets_path => Rwiki::App.assets_path,
  :precompile  => Rwiki::App.precompile,
  :digest      => Rwiki::App.digest_assets) do

  watch %r(^assets/.+$)
  watch "lib/rwiki/app.rb"
end
