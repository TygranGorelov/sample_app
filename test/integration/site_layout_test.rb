require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home' # Утверждает, что запрос был ренедерен с подходящим файлом шаблона.
    assert_select "a[href=?]", root_path, count: 2 #
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", signup_path
    assert_select "a[href=?]", contact_path # обеспечивает, что условие equality выполняется для выбранных через selector элементах.
    get contact_path
    assert_select "title", full_title("Contact") # обеспечивает, в title записано Contact.
    get signup_path
    assert_select "title", full_title("Sign up")
  end

end
