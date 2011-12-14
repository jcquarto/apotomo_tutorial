class Twitter::PanelWidget < Apotomo::Widget
  
  has_widgets do
    self << widget("twitter/form", :tweet_form)
  end
  
  def display
    @tweets = Tweet.all
    render
  end
    
  def list(tweets)
    render :locals => {:tweets => tweets}
  end
    
end
