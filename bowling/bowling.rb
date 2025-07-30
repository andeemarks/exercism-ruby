class Game
    def initialize()
        @score = 0
    end

    attr_reader :score
    def roll(pins)
        @score += pins
    end
end
