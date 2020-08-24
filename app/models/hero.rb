class Hero
    attr_accessor :name, :power, :biography
    @@all = []
    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @biography = args[:biography]
        @@all << self
    end
end