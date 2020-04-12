require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('card_game')
require_relative('card')

class CardGameTest < MiniTest::Test

  def setup
    @card1 = Card.new('diamonds', 1)
    @card2 = Card.new('spades', 7)
    @card3 = Card.new('clubs', 9)
    @game = CardGame.new
  end


  def test_check_for_ace_should_return_false
    assert_equal(false, @game.check_for_ace(@card2))
  end

  def test_check_for_ace_should_return_false_2
      assert_equal(false, @game.check_for_ace(@card3))
  end

  def test_check_for_ace_should_return_true
    assert_equal(true, @game.check_for_ace(@card1))
  end

  def test_highest_card_return_card3
    assert_equal(@card3, @game.highest_card(@card3, @card2))
  end

  def test_highest_card_should_return_neither
    assert_equal('equal cards', @game.highest_card(@card2, @card2))
  end

  def test_cards_total_returns_16
    cards = [@card2, @card3]
    assert_equal("You have a total of 16", CardGame.cards_total(cards))
  end



end
