class TwitterWidget < Apotomo::Widget
  responds_to_event :submit, :with => :process_tweet
  
  def display
    @tweets = Tweet.all
    render
  end
  
  def process_tweet(evt)
    Tweet.create( :text=> evt[:text] )
    @tweets = Tweet.all
    replace :view => :display
  end
  
end
