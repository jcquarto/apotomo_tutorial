class DashboardController < ApplicationController
  
  has_widgets do |root|
    root << panel = widget("twitter/panel", :twitter)
  end

  def index
  end

end
