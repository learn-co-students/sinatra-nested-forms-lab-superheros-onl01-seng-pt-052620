class Team
    attr_accessor :name, :motto
    def initialize(p)
        @name = p[:name]
        @motto = p[:motto]
    end
end
