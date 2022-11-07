require 'rails_helper'

describe "Author Show page", :type => :feature do
  it "should display name and homepage of author" do
    @alan = FactoryBot.create(:author)
    visit author_path(@alan)
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end
