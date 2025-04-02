require 'rspec'
require './lib/player'
require './lib/team'
require 'pry'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_a Team
  end

  it 'has attributes' do
    team = Team.new("Dodgers", "Los Angeles")
    
    expect(team.name).to eq("Dodgers")
    expect(team.city).to eq("Los Angeles")
  end

  
end 