
# deck.rb

require_relative 'card'

class Deck

  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    card = @cards.pop
    return card
  end

  def shuffle
    # shuffles the deck
    @cards.shuffle!
  end
end
