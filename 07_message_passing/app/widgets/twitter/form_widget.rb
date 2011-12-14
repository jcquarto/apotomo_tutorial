class Twitter::FormWidget < Apotomo::Widget
  responds_to_event :submit
  
  def display
    @tweet = Tweet.new
    render
  end
  
  def submit(evt)
    @tweet = Tweet.new
    
    if @tweet.update_attributes(evt[:tweet])
      trigger :newTweet, :tweet => @tweet
      replace :state => :display
    else
      replace :view => :display
    end
  end
  
end
