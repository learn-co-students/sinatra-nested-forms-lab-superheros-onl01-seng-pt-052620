class Team
    attr_accessor :name, :motto
    @@all = []
    def intitialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @@all << params[:self]
    end

    def self.all 
        @@all
    end
end
