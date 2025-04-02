require 'pry'
require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do

    before(:each) do
        @team = Team.new("Dodgers", "Los Angeles")
        @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        @player_2 = Player.new("Kenny DeNunez", 500000, 24)
        @player_3 = Player.new("Alan McClennan", 750000, 48)
        @player_4 = Player.new("Hamilton Porter", 100000, 12)

    end

    it 'exists' do
        
        expect(@team).to be_a Team

    end

    it 'has a name' do
        
        expect(@team.team_name).to eq("Dodgers")

    end

    it 'has a roster' do
        
        expect(@team.roster).to eq([])

    end

    it 'has a player count' do
        
        expect(@team.count).to be(0)

    end

    it 'can add players' do
       

        @team.add_player(@player_1)
        @team.add_player(@player_2)
        expect(@team.roster).to include(@player_1, @player_2)

        expect(@team.count).to eq(2)

    end

    it 'has long term players' do
        @team.add_player(@player_1)
        #@team.add_player(@player_2)

        @team.long_term_players

        expect(@team.long_term_players)



    end

    it 'has short term players' do

    end

    it 'can calculate team total value' do
        
    end

end