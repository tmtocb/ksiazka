class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get help page" do 
    get help_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails App"
  end

  test "should get about page" do 
    get about_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails App"
  end

  test "should get contact page" do 
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails App"
  end

  test "should get home as root page" do 
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails App"
  end

end