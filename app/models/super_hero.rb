class SuperHero

  attr_reader :name, :power, :bio

  HEROS = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HEROS<<self
  end

  def self.all
    HEROS
  end

end