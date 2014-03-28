require 'blackjack'

describe Blackjack::Dealer do
  subject(:dealer) { described_class.new("Dealer", nil) }

  it { should be_a Blackjack::Player }
end

describe Blackjack::Dealer, "#new_hand" do
  pending
end
