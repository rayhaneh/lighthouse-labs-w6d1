module MathGame
  class Player

    attr_accessor :name, :life

    def initialize(name)
      @name = name
      @life = 3
    end

    def is_alive?
      @life > 0
    end

  end
end