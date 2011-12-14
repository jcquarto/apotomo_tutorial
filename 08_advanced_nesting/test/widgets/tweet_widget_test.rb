require 'test_helper'

class TweetWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:tweet)
  end
  
  test "display" do
    render_widget :tweet
    assert_select "h1"
  end
end
