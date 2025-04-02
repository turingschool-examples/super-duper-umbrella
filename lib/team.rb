class Team
    attr_reader :team_name, :team_city, :roster

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
end