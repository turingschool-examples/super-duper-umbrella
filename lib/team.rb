class Team
    attr_reader :roster

    def initialize(name, location)
        @roster = []
    end

    def player_count
        @roster.length
    end

    def add_player(player)
        @roster << player
    end

    def long_term_players
        @roster.find_all do |player|
            player.contract_length > 24
        end
    end

    def short_term_players
        @roster.find_all do |player|
            player.contract_length <= 24
        end
    end

    def total_value
        sum = 0
        @roster.each do |player|
            sum += player.total_cost
        end
        sum
    end

    def details
        {
            "total value" => total_value,
            "player count" => player_count
        }
    end
end