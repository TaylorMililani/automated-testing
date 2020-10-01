
# card.rb
VALID_SUITS = [:hearts, :spades, :clubs, :diamonds]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)

    unless VALID_SUITS.include?(suit)
      raise ArgumentError.new("Not a valid suit")
    end

    if value < 1 || value > 13
      raise ArgumentError.new("Not a valid card value")
    end

    @value = value
    @suit = suit
  end

  def to_s

    face_cards = {
        1 => "Ace",
        11 => "Jack",
        12 => "Queen",
        13 => "King"
    }

    if face_cards.include?(@value)
      return "#{face_cards[value]} of #{suit.to_s}"
    end

    return "#{value} of #{suit.to_s}"
  end

end

card = Card.new(7, :spades)
puts card.suit
