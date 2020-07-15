# frozen_string_literal: true

def multiple_of_3_or_5?(number)
  if (number % 3).zero? || (number % 5).zero?
    true

  else
    false
  end
end

def sum_of_3_or_5_multiples(final_number)
  # Check params
  incorrect_param = 'I only take whole absolute numbers'
  puts incorrect_param if !final_number.is_a?(Integer) || final_number.negative?

  multiple_array = []

  # Here, start a loop going from zero to the number "final_number"
  # EXCLUDED (because we are on a strictly lower level)
  # this loop indents at each turn a variable
  # which will be worth 0 then 1 then 2 ... etc.
  (1...final_number).each do |current_number|
    next unless multiple_of_3_or_5?(current_number)

    # If the answer is "true", then I add the value
    # from "current_number" to the variable "final_sum".
    multiple_array << current_number
    # Here, position the end of the loop
  end
  final_sum = multiple_array.sum

  final_sum # we return the variable that contains the sum of the whole
end

# puts sum_of_3_or_5_multiples(11) #=> 33
# puts sum_of_3_or_5_multiples(10) #=> 23

# puts sum_of_3_or_5_multiples(3)  #=> 0
# puts sum_of_3_or_5_multiples(5)  #=> 3
# puts sum_of_3_or_5_multiples(51) #=> 593
# puts sum_of_3_or_5_multiples(45) #=> 450

# puts sum_of_3_or_5_multiples(2)  #=> 0
# puts sum_of_3_or_5_multiples(7)  #=> 14
# puts sum_of_3_or_5_multiples(64) #=> 933
