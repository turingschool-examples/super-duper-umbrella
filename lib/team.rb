class Team 
  attr_reader :name, :city, :roster, :player_count
  def initialize(name, city)
    @name = name
    @city = city
    @roster = []
    @player_count = 0
  end

  def add_player(player)
    @roster << player
  end

  def player_count
    @roster.count
  end

  def long_term_players
    @roster.select do |player|
      player.contract_length > 24
    end
  end

  
end