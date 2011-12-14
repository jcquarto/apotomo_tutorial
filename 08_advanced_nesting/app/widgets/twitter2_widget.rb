class Twitter2Widget < Apotomo::Widget
  responds_to_event :newTweet, :with => :redraw_list
  
  has_widgets do
    self << widget("twitter/form", :tweet_form)
  end
    
  def display
    for t in Tweet.all
      self << widget(:tweet,"tweet-#{t.id}", :tweet => t)
    end
    
    render :layout => "portlet"
  end
  
  def list(tweets)
    render :locals => {:tweets => tweets}
  end
  
  def redraw_list(evt)
    text = evt[:tweet].text
    
    render :text => "$(\"##{widget_id} ul\").append(\"<li>#{text}</li>\");"
  end


end
