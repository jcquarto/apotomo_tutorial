class DashboardController < ApplicationController
  
  has_widgets do |root|
    root << panel = widget("twitter/panel", :twitter)
    root << widget(:twitter2)
  end

  def index
  end

end
