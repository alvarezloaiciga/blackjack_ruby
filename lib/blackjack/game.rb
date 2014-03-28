module Blackjack
  class Game
    attr_reader :player, :dealer, :deck

    def initialize
      @player = Blackjack::Human.new("Macho", self)
      @dealer = Blackjack::Dealer.new("Dealer", self)
      @deck = Blackjack::Deck.new
    end

    def play
      # this needs to an infite loop,
      # unitil the player runs out of money
      # or wants to exit

      5.times do
        dealer.new_hand(deck)
      end
    end

    def hand_done
      announce_winner
      clean_table
    end

    private
    def announce_winner
      winner = if @player.lost? then @dealer end
      winner ||= if @dealer.lost? then @player end
      winner ||= @dealer.score >= @player.score ? @dealer : @player

      print "The winner is #{winner.name} \n\n"
    end

    def clean_table
      @player.cards = []
      @dealer.cards = []
      @deck.reset!
    end
  end
end
