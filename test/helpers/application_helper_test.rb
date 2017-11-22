require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    title_second_part = "| Ruby on Rails Tutorial Sample App"

    assert_equal full_title("Contact"), "Contact #{title_second_part}"

    assert_equal full_title("Help"), "Help #{title_second_part}"
  end
end

#assert_equal( expected, actual, [msg] ) 	Утверждает, что expected == actual истинно.