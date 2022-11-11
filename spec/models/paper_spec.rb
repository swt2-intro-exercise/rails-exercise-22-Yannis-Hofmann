require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have a list of authors" do
    @paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
    expect(@paper.authors).to eq([])
  end
end
