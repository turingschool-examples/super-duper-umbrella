class Player
    attr_reader :monthly_cost, :contract_length, :name, :nickname

    def initialize(name, monthly_cost, contract_length)
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @name = name
        # @nickname = nil 
    end

    def set_nickname!(new_nickname)
        @nickname = new_nickname
    end

    def first_name
        # @name.split[0]
        @name.split.first
    end

    def last_name
        # @name.split[1]
        @name.split.last
        # @name.split[-1]
    end

    def total_cost
        @contract_length * @monthly_cost
    end
end