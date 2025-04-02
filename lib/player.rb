class Player 
  attr_reader :name, :monthly_cost, :contract_length
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost 
    @contract_length = contract_length
  end

  def first_name
    @name.split[0] #1st way to do this
  end

  def last_name
    @name.split.last #2nd way
  end

  
end