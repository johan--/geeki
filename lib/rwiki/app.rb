module Rwiki
  class App < Sinatra::Base

    set :root, File.join(File.dirname(__FILE__), '../..')
    set :app_file, File.join(File.dirname(__FILE__), '../../..')

    disable :show_exceptions
    enable :raise_errors
    enable :logging

    configure do
      Dir.mkdir('log') unless File.exists?('log')
    end

    configure :test do
      use Rack::CommonLogger, File.new('log/test.log', 'w')
    end

    configure :development do
      use Rack::CommonLogger, File.new('log/development.log', 'w')
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
