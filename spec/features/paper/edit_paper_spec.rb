require 'rails_helper'

describe "Edit paper page", type: :feature do
  it "it should contain a multi select to add authors" do
    @paper = FactoryBot.create :paper
    visit edit_paper_path(@paper)
    expect(page).to have_select('paper_author_ids')
  end
end
