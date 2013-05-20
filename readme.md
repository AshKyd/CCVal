# CreditCard
A class to superficially check credit card validity using a Luhn
algorithm.

## Usage (Command Line)
This class comes with a command line implementation that lets you
validate credit cards on the command line.

To use this script, ensure you have Ruby installed and that the
validate_cards.rb file is executable, then run:

	./validate_cards.rb

## Usage (Ruby Code)
This class can be used anywhere like so:

    require './CreditCard';
    myCard = CreditCard.new("0000-0000-0000-0000")

The constructor accepts a string or numeric card value.

### Properties
A CreditCard class has the following properties:

* number: The credit card number.
* type: The type (issuer) of card.
* valid: Whether the card passes our initial validation.

## Testing
Tests are available for CreditCard in tc_CreditCard.rb. To run these,
ensure you have the MiniTest gem installed, and 

    ruby tc_CreditCard.rb

## Author
This library was written by Ash Kyd <ash@kyd.com.au>.

Any feedback is most welcome.
