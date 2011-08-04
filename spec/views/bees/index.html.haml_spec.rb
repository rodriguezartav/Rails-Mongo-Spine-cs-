require 'spec_helper'

describe "bees/index.html.haml" do
  before(:each) do
    assign(:bees, [
      stub_model(Bee,
        :name => "Name",
        :email => "Email",
        :username => "Username",
        :password => "Password"
      ),
      stub_model(Bee,
        :name => "Name",
        :email => "Email",
        :username => "Username",
        :password => "Password"
      )
    ])
  end

  it "renders a list of bees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
