require "./CreditCard"
require "minitest/autorun"
 
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
  
  def assert_card(number,expectedType,expectedValidity)
    # Instantiate a new card
    begin
    myCard = CreditCard.new(number)
  rescue
    # Continue tests on exception
  end
  
  if(expectedType == nil)
    # Expected Failure
    assert_equal(NilClass,myCard.class)
  else
    # Expected success
    assert_equal(CreditCard,myCard.class)
    assert_equal(expectedValidity,myCard.valid)
    assert_equal(expectedType,myCard.type)
  end
  end
 
end
