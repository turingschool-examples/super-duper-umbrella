require './lib/player'
class Team
    attr_reader :team_name, :team_city, :roster, :player

    def initialize(name, city)
        @team_name = name
        @team_city = city
        @roster = []
    end

    def count
        @roster.count
    end

    def add_player(player)
        @roster.unshift(player)
    end

    def long_term_players
        
        @roster
        
    end
end