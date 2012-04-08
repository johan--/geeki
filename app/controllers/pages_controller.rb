class PagesController < ApplicationController
  def show
    @id = params[:id]
    body = render_to_string(:partial => 'page.html.erb')

        render :json => {
            :id => @id,
            :text => "Page #{@id}",
            :body => body
        }
  end
end
