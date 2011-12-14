require 'test_helper'

class Twitter2WidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:twitter2)
  end
  
  test "display" do
    render_widget :twitter2
    assert_select "h1"
  end
end
