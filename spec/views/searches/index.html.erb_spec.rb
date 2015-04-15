require 'rails_helper'

RSpec.describe "searches/index", type: :view do
  before(:each) do
    assign(:searches, [
      Search.create!(
        :user => nil
      ),
      Search.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of searches" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
