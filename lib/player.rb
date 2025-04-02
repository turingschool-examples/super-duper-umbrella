class Player
    attr_reader :first_name, :last_name, :cost, :contract_length

    def initialize(name, cost, contract_length)
        @name = name
        #@first_name = name.split.shift
        #@last_name = name.split.pop
        @cost = cost
        @contract_length = contract_length

    end

    def monthly_cost
        return @cost
    end

    def first_name
        @first_name = @name.split.shift
    end

    def last_name
        @last_name = @name.split.pop
    end

    def total_cost
        (cost * contract_length)
    end

end