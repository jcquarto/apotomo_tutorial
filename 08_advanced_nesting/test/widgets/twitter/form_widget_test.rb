require 'test_helper'

class Twitter::FormWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:form)
  end
  
  test "display" do
    render_widget :form
    assert_select "h1"
  end
end
