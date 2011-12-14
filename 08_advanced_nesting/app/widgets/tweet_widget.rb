class TweetWidget < Apotomo::Widget

  def display
    @tweet = options[:tweet]
    render
  end

end
