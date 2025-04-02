class Team
    attr_reader :team_name, :location, :roster

    def initialize(team_name, location)
        @team_name = team_name
        @location = location
        @roster = []
    end

def player_count
    @roster.count
    end

def add_player(player)
    @roster << player
    end
end

team = Team.new("Dodgers", "Los Angeles")

player_1 = Player.new("Michael", "Palledorous", 1000000, 36)
player_2 = Player.new("Kenny",  "DeNunez", 500000, 24)