# An implementation of the Luhn Algorithm
# See https://en.wikipedia.org/wiki/Luhn_algorithm
# Author:: Ash Kyd (ash@kyd.com.au)
# Copyright:: Copyright (2012) Ash Kyd

module LuhnAlgorithm

  # Validate a number with the Luhn algorithm.
  def validateLuhn(number)
  
    # Split our number into an array of stringy digits.
    digits = number.to_s.split(//)
    
    # We want to double each number starting from the second-last
    # digit. We can determine which of these we need to double using
    # a modulus operation on the array length so we only have to
    # loop once.
    # If the modulus of the index matches doubleNum, we must
    # double the value.
    doubleNum = (digits.length) % 2;
    
    checksum = 0;
    
    digits.each_index do |i|
      # Convert to an integer
      digits[i] = digits[i].to_i
      
      # Check whether we need to double this.
      if(i%2 == doubleNum)
        digits[i] *= 2
        
        # Sum the values independently, i.e. "10" = 1 + 0
        # We can do this easily as 1 + val%10 because the max
        # possible value here is 19.
        if digits[i] > 9
          digits[i] = 1 + digits[i]%10
        end
      end
      
      # Add the current value to the sum
      checksum += digits[i]
    end
    
    # Card is valid if our checksum is divisible by ten
    valid = checksum % 10 == 0
    
    return valid
    
  end
  
end
