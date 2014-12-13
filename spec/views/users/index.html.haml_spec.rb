require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :username => "Username",
        :provider => "Provider",
        :uid => "Uid",
        :url => "Url",
        :role => "Role"
      ),
      User.create!(
        :username => "Username",
        :provider => "Provider",
        :uid => "Uid",
        :url => "Url",
        :role => "Role"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
