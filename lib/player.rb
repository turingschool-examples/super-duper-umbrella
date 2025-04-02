class Player
    attr_reader :first_name, :last_name, :monthly_cost, :contract_length
  
    def initialize(first_name, last_name, monthly_cost, contract_length)
      @first_name = first_name
      @last_name = last_name
      @monthly_cost = monthly_cost
      @contract_length = contract_length
    end
  
    def total_cost
      @monthly_cost * @contract_length
    end
  end

  player = Player.new("Michael", "Palledorous", 1000000, 36)
