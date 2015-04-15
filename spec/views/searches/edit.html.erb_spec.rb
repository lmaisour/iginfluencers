require 'rails_helper'

RSpec.describe "searches/edit", type: :view do
  before(:each) do
    @search = assign(:search, Search.create!(
      :user => nil
    ))
  end

  it "renders the edit search form" do
    render

    assert_select "form[action=?][method=?]", search_path(@search), "post" do

      assert_select "input#search_user_id[name=?]", "search[user_id]"
    end
  end
end
