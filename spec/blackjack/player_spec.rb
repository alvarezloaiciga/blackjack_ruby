require 'blackjack'

describe Blackjack::Player, "initializer" do
  let(:game) { double(:game) }

  subject(:player) { described_class.new("Player", game)}

  its(:name)  { should eq "Player" }
  its(:game)  { should eq game     }
  its(:cards) { should be_empty    }
end

describe Blackjack::Player, "#lost?" do
  context "when score is less than 21" do
    subject(:player) { Blackjack::Player.new("Player", nil) }

    before do
      player.cards << Blackjack::Card.new("4", :hearts)
    end

    it { should_not be_lost }
  end

  context "when score is more than 21" do
    subject(:player) { Blackjack::Player.new("Player", nil) }

    before do
      player.cards << Blackjack::Card.new("K", :hearts)
      player.cards << Blackjack::Card.new("K", :diamonds)
      player.cards << Blackjack::Card.new("4", :diamonds)
    end

    it { should be_lost }
  end
end
