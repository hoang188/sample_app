require 'spec_helper'

describe "pictures/new" do
  before(:each) do
    assign(:picture, stub_model(Picture,
      :pic_url => "MyString",
      :pic_des => "MyString"
    ).as_new_record)
  end

  it "renders new picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pictures_path, :method => "post" do
      assert_select "input#picture_pic_url", :name => "picture[pic_url]"
      assert_select "input#picture_pic_des", :name => "picture[pic_des]"
    end
  end
end
