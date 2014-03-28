require 'blackjack/card'
describe Blackjack::Card do
  let(:number) { "4" }
  let(:suit) { :hearts }

  subject(:card) { described_class.new(number, suit) }

  its(:number) { should == number }
  its(:suit) { should == suit }
end

describe Blackjack::Card, "#value" do
  context "J" do
    subject(:card) { described_class.new("J", :hearts) }
    its(:value) { should == 11 }
  end

  context "A" do
    subject(:card) { described_class.new("A", :hearts) }
    its(:value) { should == 1 }
  end
end
