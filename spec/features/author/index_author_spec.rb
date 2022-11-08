require 'rails_helper'

describe "Author list page", :type => :feature do
  it "should display all authors names" do
    @alan = FactoryBot.create(:author)
    visit "/authors"
    expect(page).to have_text("Alan Turing")
    expect(page).to have_link "Show", href: "/authors/1"
  end
end
