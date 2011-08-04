require 'spec_helper'

describe "bees/edit.html.haml" do
  before(:each) do
    @bee = assign(:bee, stub_model(Bee,
      :name => "MyString",
      :email => "MyString",
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit bee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bees_path(@bee), :method => "post" do
      assert_select "input#bee_name", :name => "bee[name]"
      assert_select "input#bee_email", :name => "bee[email]"
      assert_select "input#bee_username", :name => "bee[username]"
      assert_select "input#bee_password", :name => "bee[password]"
    end
  end
end
