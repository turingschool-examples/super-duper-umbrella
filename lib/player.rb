class Player

  attr_reader :full_name, :first_name, :last_name, :monthly_cost, :contract_length

  def initialize(full_name, monthly_cost, contract_length)
    @full_name = full_name
    name = @full_name.split(' ')
    @first_name = name[0]
    @last_name = name[1]
    @nickname = nil
    
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  #Notes: Contract length is in months
  # and the total cost is the contract 
  # length multiplied by the monthly cost.
  def total_cost
    @contract_length * @monthly_cost
  end

  def nickname
    @nickname
  end

  def set_nickname!(nickname)
    @nickname = nickname
  end
end