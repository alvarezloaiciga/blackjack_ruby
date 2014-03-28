module Blackjack
  class Card
    attr_accessor :number, :suit

    def initialize(number, suit)
      @number = number
      @suit = suit
    end

    def value
      begin
        Integer(number)
      rescue
        number == "A" ? 1 : 11
      end
    end
  end
end
