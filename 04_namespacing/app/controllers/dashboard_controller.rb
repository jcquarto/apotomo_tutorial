class DashboardController < ApplicationController
  
  has_widgets do |root|
    root << widget("twitter/panel", :twitter)
    root << widget("twitter/form", :tweet_form)
  end

  def index
  end

end
