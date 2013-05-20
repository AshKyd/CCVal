# AKCreditCard
A class to superficially check credit card validity using a Luhn
algorithm.

A [more appropriate gem](https://rubygems.org/gems/creditcard) might be
found at on rubygems.org. This implementation is a learning resource.

## Usage (Command Line)
This class comes with a command line implementation that lets you
validate credit cards on the command line.

To use this script, ensure you have Ruby installed and that the
./bin/akcreditcard file is executable, then run:

  ./bin/akcreditcard

## Usage (Ruby Code)
This class can be used anywhere like so:

    require 'akcreditcard';
    my_card = AKCreditCard.new("0000-0000-0000-0000")

The constructor accepts a string or numeric card value.

### Properties
An AKCreditCard class has the following properties:

* number: The credit card number.
* type: The type (issuer) of card.
* valid: Whether the card passes our initial validation.

## Testing
Tests are available for AKCreditCard in test/akcreditcard_test. To run
these, ensure you have the MiniTest gem installed, and 

    ruby test/akcreditcard_test.rb

## Author
This library was written by Ash Kyd <ash@kyd.com.au>.

Any feedback is most welcome.
