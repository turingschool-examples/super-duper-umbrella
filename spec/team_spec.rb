require 'pry'
require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
    it 'exists' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_a Team

    end

    it 'has a name' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.team_name).to eq("Dodgers")

    end

    it 'has a roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        expect(team.roster).to eq([])

        #expect(team.roster).to include(@player1, @player2)

    end

    it 'has a player count' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        expect(team.count).to be(0)

    end

    it 'can add players' do
        team = Team.new("Dodgers", "Los Angeles")
        @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        @player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(@player_1)
        team.add_player(@player_2)
        expect(team.roster).to include(@player_1, @player_2)

        expect(team.count).to eq(2)

    end

end