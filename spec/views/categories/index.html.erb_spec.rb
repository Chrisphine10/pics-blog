require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        categoty: "Categoty"
      ),
      Category.create!(
        categoty: "Categoty"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", text: "Categoty".to_s, count: 2
  end
end
