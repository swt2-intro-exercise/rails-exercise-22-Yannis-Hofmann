require 'rails_helper'

describe "New paper page", type: :feature do
  it "should exist at 'new_paper_page' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_paper_path
  end
  it "should have text inputs for an paper's title, venue, and year" do
    visit new_paper_path
    expect(page).to have_field('paper[title]')
    expect(page).to have_field('paper[venue]')
    expect(page).to have_field('paper[year]')
  end
  it "should not be valid if title is not submitted" do
    @paper = Paper.new(title: "", venue: "test", year: 1000)
    expect(@paper).to_not be_valid
  end
  it "should display an error if invalid Paper is submitted" do
    visit new_paper_path
    fill_in 'paper[title]', with: ''
    fill_in 'paper[venue]', with: 'test'
    fill_in 'paper[year]', with: 1000
    find('input[type="submit"]').click
    expect(page).to have_text("error")
  end
  it "should not be valid if venue is not submitted" do
    @paper = Paper.new(title: "test", venue: "", year: 1000)
    expect(@paper).to_not be_valid
  end
  it "should not be valid if year is not submitted" do
    @paper = Paper.new(title: "test", venue: "test", year: "")
    expect(@paper).to_not be_valid
  end
  it "should not be valid if year is not a number" do
    @paper = Paper.new(title: "test", venue: "test", year: "test")
    expect(@paper).to_not be_valid
  end
  it "should not be valid if title is not submitted" do
    @paper = Paper.new(title: "", venue: "test", year: 1000)
    expect(@paper).to_not be_valid
  end

end
