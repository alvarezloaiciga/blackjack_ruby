require 'blackjack'

describe Blackjack::Human do
  subject(:human) { described_class.new("Human", nil) }

  it { should be_a Blackjack::Player }
end

describe Blackjack::Human do
  context "score is 21" do
    subject(:human) { described_class.new("Human", nil) }

    before { allow(subject).to receive(:score).and_return(21) }

    its(:stop?) { should be_true }
  end

  context "score is 18" do
    subject(:human) { described_class.new("Human", nil) }

    before { allow(subject).to receive(:score).and_return(18) }

    its(:stop?) { should be_false }
  end
end
