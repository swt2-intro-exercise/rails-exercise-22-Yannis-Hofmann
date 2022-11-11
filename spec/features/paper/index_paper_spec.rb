require 'rails_helper'

describe "New paper page", type: :feature do
  it "index papge should render" do
    visit "/papers"
    expect(page).to have_text("Papers")
  end
  it "should have a link to edit paper" do
    @paper = FactoryBot.create :paper
    visit "/papers"
    expect(page).to have_link("Edit", href: "/papers/1/edit")
  end
end

