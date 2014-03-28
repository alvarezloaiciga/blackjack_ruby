require_relative 'card'

class Blackjack::Human < Blackjack::Player
  #this will depend on the human itself
  #should override this with the human decision
  def stop?
    score > 19
  end
end
