require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have a list of authors" do
    @paper = FactoryBot.create :paper
    expect(@paper.authors).to eq([])
  end
end
