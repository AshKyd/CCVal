require "akcreditcard"
require "minitest/autorun"

# Include the appropriate lib path so we can load the lib.
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
 
class TestSimpleNumber < Minitest::Test
 
  def test_simple
    self.assert_card(4111111111111111,"VISA","valid")
    self.assert_card(4111111111111,"VISA","invalid")
    self.assert_card(4012888888881881,"VISA","valid")
    self.assert_card(378282246310005,"AMEX","valid")
    self.assert_card(6011111111111117,"Discover","valid")
    self.assert_card(5105105105105100,"MasterCard","valid")
    self.assert_card(5105105105105106,"MasterCard","invalid")
    self.assert_card(9111111111111111,"Unknown","invalid")
    self.assert_card("bad input",nil,nil)
    self.assert_card("4111-1111-1111-1111","VISA","valid")
  self.assert_card("4111 1111 1111 1111","VISA","valid")
  end
  
  def assert_card(number,expected_type,expected_validity)
    # Instantiate a new card
    begin
    my_card = AKCreditCard.new(number)
  rescue
    # Continue tests on exception
  end
  
  if(expected_type == nil)
    # Expected Failure
    assert_equal(NilClass,my_card.class)
  else
    # Expected success
    assert_equal(AKCreditCard,my_card.class)
    assert_equal(expected_type,my_card.type)
    assert_equal(expected_validity,my_card.valid)
  end
  end
 
end
