require 'blackjack/deck'

describe Blackjack::Deck do
  it "has 52 cards" do
    expect(subject).to have(52).cards
  end
end

describe Blackjack::Deck, "next_card" do
  it "returns a card" do
    expect(subject.next_card).to be_a(Blackjack::Card)
  end

  it "removes the card from the deck" do
    expect {
      subject.next_card
    }.to change{ subject.cards.count }.from(52).to(51)
  end
end
