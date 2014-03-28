require_relative 'card'
module Blackjack
  class Deck
    attr_reader :cards

    SUITS = %w( hearts diamonds spades clubs )
    NUMBERS = %w( A 2 3 4 5 6 7 8 9 10 J Q K )

    def initialize
      reset!
    end

    def reset!
      @cards = []
      build_cards
      @cards.shuffle!
    end

    def next_card
      cards.pop
    end

    private
    def build_cards
      SUITS.each do |suit|
        NUMBERS.each do |number|
          @cards << Card.new(number, suit)
        end
      end
    end
  end
end
