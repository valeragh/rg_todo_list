require 'rails_helper'

RSpec.describe "users/edit", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :username => "MyString",
      :provider => "MyString",
      :uid => "MyString",
      :url => "MyString",
      :role => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_provider[name=?]", "user[provider]"

      assert_select "input#user_uid[name=?]", "user[uid]"

      assert_select "input#user_url[name=?]", "user[url]"

      assert_select "input#user_role[name=?]", "user[role]"
    end
  end
end
