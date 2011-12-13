class DashboardController < ApplicationController
  
  has_widgets do |root|
    root << widget(:twitter)
  end

  def index
  end

end
