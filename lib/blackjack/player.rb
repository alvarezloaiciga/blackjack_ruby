module Blackjack
  class Player
    attr_accessor :name, :game, :cards

    def initialize(name, game)
      @name = name
      @game = game
      @cards = []
    end

    def lost?
      score > 21
    end

    # This score doesn't take in consideration
    # that value of Aces is 1 or 11 depending of the situation
    def score
      @cards.map(&:value).inject(:+)
    end
  end
end
