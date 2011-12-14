class Twitter::PanelWidget < Apotomo::Widget
  responds_to_event :newTweet, :with => :redraw_list
  
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
  
  def redraw_list(evt)
    replace "##{widget_id} ul", {:state => :list}, Tweet.all
  end
    
end
