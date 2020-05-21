require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      categoty: "Categoty"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Categoty/)
  end
end
