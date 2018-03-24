class WelcomeController < ApplicationController

  def index
    @link = Link.new
    @top_links = Link.order(clicks: :desc).first(12)
  end

end
