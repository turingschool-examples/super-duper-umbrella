class Team

  attr_reader :last_name, :first_name, :roster, :player_count

  def initialize(last_name, first_name)
    @last_name = last_name
    @first_name = first_name
    @roster = []
    @player_count = 0
  end

  def add_player(player)
    @roster << player
    @player_count += 1
  end

  def long_term_players
    @roster.find_all { |player| player.contract_length > 24 }
  end

  def short_term_players
    @roster.find_all { |player| player.contract_length <= 24 }
  end

  def total_value
    @roster.sum { |player| player.total_cost }
  end

end