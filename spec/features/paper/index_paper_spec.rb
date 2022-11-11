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
  it "should hava link to delete paper" do
    @paper = FactoryBot.create :paper
    visit "/papers"
    expect(page).to have_link("Delete", href: paper_path(@paper))
  end
  it "should not not show a paper from 1950 when ?year=1951 is set" do
    @paper = FactoryBot.create :paper
    visit "/papers?year=1951"
    expect(page).to_not have_text("COMPUTING MACHINERY AND INTELLIGENCE")
  end
end

