require 'spec_helper'

describe "pictures/show" do
  before(:each) do
    @picture = assign(:picture, stub_model(Picture,
      :pic_url => "Pic Url",
      :pic_des => "Pic Des"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pic Url/)
    rendered.should match(/Pic Des/)
  end
end
