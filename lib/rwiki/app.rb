module Rwiki
  module AssetHelpers
    def asset_path(source)
      "/assets/" + settings.sprockets.find_asset(source).digest_path
    end
  end

  class App < Sinatra::Base

    set :root, File.join(File.dirname(__FILE__), '../..')
    set :app_file, File.join(File.dirname(__FILE__), '../../..')

    set :sprockets, Sprockets::Environment.new(root)
    set :precompile,    [ /\w+\.(?!js|css).+/, /application.(css|js)$/ ]
    set :assets_prefix, 'assets'
    set :assets_path, File.join(root, 'public', assets_prefix)

    disable :show_exceptions
    enable :raise_errors
    enable :logging

    configure do
      sprockets.append_path(File.join(root, 'assets', 'stylesheets'))
      sprockets.append_path(File.join(root, 'assets', 'javascripts'))

      sprockets.context_class.instance_eval do
        include AssetHelpers
      end

      Dir.mkdir('log') unless File.exists?('log')
    end

    configure :test do
      use Rack::CommonLogger, File.new('log/test.log', 'w')
    end

    configure :development do
      use Rack::CommonLogger, File.new('log/development.log', 'w')
    end

    helpers do
      include AssetHelpers
    end

    get '/' do
      erb :index
    end

    get '/pages/:page_id.json', :provides => :json do
      @id = params[:page_id]

      page = { :id => @id, :text => "Page ##{@id}", :body => "Body for the Page ##{@id}, time: #{Time.new}" }
      page.to_json
    end

  end
end
