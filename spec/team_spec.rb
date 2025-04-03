require 'rspec'
require 'pry'
require './lib/team'

RSpec.describe Team do
    #::new
    it 'exists' do 
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_a(Team)
    end

    #.roster
    it 'starts with an empty roster' do
        team = Team.new("Dodgers", "Los Angeles")
        
        expect(team.roster).to eq([])
    end

    #.player_count
    it 'starts with a player count of 0' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
    end

    #.add_player(arg)
    it 'can add a player' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        # binding.pry
        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
        expect(team.player_count).to eq(2)
    end

    describe 'getting roster information' do
        before(:each) do
            @team = Team.new("Dodgers", "Los Angeles")
            @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
            @player_2 = Player.new("Kenny DeNunez", 500000, 24)
            @player_3 = Player.new("Alan McClennan", 750000, 48)
            @player_4 = Player.new("Hamilton Porter", 100000, 12)
            @team.add_player(@player_1)
            @team.add_player(@player_2)
            @team.add_player(@player_3)
            @team.add_player(@player_4)
        end

        #.long_term_players
        it 'can list long term players' do
            expect(@team.long_term_players).to eq([@player_1, @player_3])
        end
    
        #.short_term_players
        it 'can list short term players' do
            expect(@team.short_term_players).to eq([@player_2, @player_4])
        end

        #.total_value
        it 'can calculate the total_value of the roster' do
            expect(@team.total_value).to eq(85200000)
        end

        it 'can return team details hash' do
            expected = {
                "total value" => 85200000,
                "player count" => 4
            }
            expect(@team.details).to eq(expected)
        end
    end

end