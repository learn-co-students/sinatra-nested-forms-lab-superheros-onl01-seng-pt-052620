class Hero
    attr_accessor :name, :power, :bio
    def initialize(p)
        @name = p[:name]
        @power = p[:power]
        @bio = p[:bio]
    end
end

