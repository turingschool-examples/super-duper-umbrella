require 'rspec'
require './lib/player'
require './lib/team'
require 'pry'

RSpec.describe Team do
#binding.pry
  before(:each) do
    @team = Team.new("Dodgers", "Los Angeles")

    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)
    @player_3 = Player.new("Alan McClennan", 750000, 48)
    @player_4 = Player.new("Hamilton Porter", 100000, 12)

  end

  it 'exists' do
    expect(@team).to be_a(Team)
  end

  it 'has a first_name' do 
    expect(@team.first_name).to eq("Los Angeles")
  end
  
  it 'has a last_name' do
    expect(@team.last_name).to eq("Dodgers")
  end

  it 'starts with an empty roster' do
    expect(@team.roster).to eq([])
    expect(@team.player_count).to eq(0)
  end

  it 'adds new players' do
    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)

    @team.add_player(@player_1)
    @team.add_player(@player_2)

    @team.roster
    expect(@team.roster).to eq([@player_1, @player_2])
    
    @team.player_count
    expect(@team.player_count).to eq(2)

  end
 
  it 'considers players long term if their contract is greater than 2 years' do
    
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.long_term_players).to eq([@player_1, @player_3])
  end

  it 'considers players short term if their contract is less 2 years or less' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)
    
    expect(@team.short_term_players).to eq([@player_2, @player_4])
  end

  it 'calculates payroll based on the total cost of all players' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.total_value).to eq(85200000)
  end

end