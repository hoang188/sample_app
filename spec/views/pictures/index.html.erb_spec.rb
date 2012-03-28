require 'spec_helper'

describe "pictures/index" do
  before(:each) do
    assign(:pictures, [
      stub_model(Picture,
        :pic_url => "Pic Url",
        :pic_des => "Pic Des"
      ),
      stub_model(Picture,
        :pic_url => "Pic Url",
        :pic_des => "Pic Des"
      )
    ])
  end

  it "renders a list of pictures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pic Url".to_s, :count => 2
    assert_select "tr>td", :text => "Pic Des".to_s, :count => 2
  end
end
