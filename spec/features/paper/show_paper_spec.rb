require 'rails_helper'

describe "Paper Show page", :type => :feature do
  it "should display the authors of the book" do
    @author = FactoryBot.create :author
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)
    expect(page).to have_text("Alan Turing")
  end
end
