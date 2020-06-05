require('minitest/autorun')
require('minitest/reporters')
require_relative('../card')
require_relative('../card_game')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestClass < MiniTest::Test
  def setup()
    @ace_spades = Card.new("Spades", 1)
    @eight_hearts = Card.new("Hearts", 8)
    @king_clubs = Card.new("Clubs", 13)
    @ten_diamonds = Card.new("Diamonds", 10)
    @four_spades = Card.new("Spades", 4)
    @four_clubs = Card.new("Clubs", 4)

    @hand1 = [@ace_spades, @king_clubs, @four_spades]
    @hand2 = [@eight_hearts, @ten_diamonds, @four_clubs]
  end

  def test_check_ace_true
    assert_equal(true, CardGame.check_for_ace(@ace_spades))
  end

  def test_check_ace_false
    assert_equal(false, CardGame.check_for_ace(@eight_hearts))
  end

  def test_highest_card
    assert_equal(@ten_diamonds, CardGame.highest_card(@four_spades, @ten_diamonds))
    assert_equal(@four_spades, CardGame.highest_card(@four_spades, @ace_spades))
  end

  def test_cards_total
    assert_equal("You have a total of 18", CardGame.cards_total(@hand1))
    assert_equal("You have a total of 22", CardGame.cards_total(@hand2))
  end
end
