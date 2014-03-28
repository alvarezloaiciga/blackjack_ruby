module Blackjack
  class Dealer < Blackjack::Player
    def new_hand(deck)
      @deck = deck

      deal_first_cards

      give_cards_to_player(cards: 1) until @game.player.stop?
      give_cards_to_player(cards: 1, player: self) until stop?

      p "#{@game.player.name} got #{@game.player.cards.map(&:number).join(",")}"
      p "#{name} got #{@cards.map(&:number).join(",")}"

      @game.hand_done
    end

    private
    def stop?
      lost? || score > 16
    end

    def deal_first_cards
      give_cards_to_player(cards: 2)
      give_cards_to_player(cards: 2, player: self)
    end

    def give_cards_to_player(cards: 1, player: @game.player)
      cards.times do
        card = @deck.next_card
        player.cards << card
      end
    end
  end
end
