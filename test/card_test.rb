require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
      expect {Card.new(4, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      card = Card.new(3, :spades)
      expect(card.to_s).must_equal "3 of spades"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do

      card = Card.new(12, :spades)
      expect(card.to_s).must_equal "Queen of spades"

    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      card = Card.new(7, :hearts)
      expect(card.value).must_equal 7
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      card = Card.new(13, :diamonds)
      expect(card.suit).must_equal :diamonds
    end
  end

end
