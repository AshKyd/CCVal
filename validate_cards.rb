#!/usr/bin/env ruby
require './CreditCard';
puts "Enter one or more cards to validate, one per line: "
while (userInput = gets.chomp) != ""
  begin
    thisCard = CreditCard.new(userInput)
    puts thisCard.to_s
  rescue
    puts "Invalid card. Cards may consist only of digits, dashes and spaces."
  end
end
