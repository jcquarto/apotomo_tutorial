require 'test_helper'

class TwitterWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:twitter)
  end
  
  test "display" do
    render_widget :twitter
    assert_select "h1"
  end
end
