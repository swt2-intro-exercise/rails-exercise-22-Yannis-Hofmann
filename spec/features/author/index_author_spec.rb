require 'rails_helper'

describe "Author list page", :type => :feature do
  it "should display all authors names" do
    @alan = FactoryBot.create(:author)
    visit "/authors"
    expect(page).to have_text("Alan Turing")
    expect(page).to have_link "Show", href: "/authors/1"
  end
  it "should contain a link to create new authors" do
    visit "/authors"
    expect(page).to have_link 'New', href: new_author_path
  end
  it "should contain a link to delete authors" do
    @alan = FactoryBot.create(:author)
    visit "/authors"
    expect(page).to have_link 'Delete', href: author_path(@alan)
  end
end
