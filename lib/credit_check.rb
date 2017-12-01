
def credit_check(card_number)
  sum_of_all_digits = 0
  card_number.split('').reverse.each_with_index do | num, i|
    if i.odd? && (num.to_i * 2) > 9
      double_digit = num.to_i * 2
      sum = double_digit.to_s.split('').map { |digit| digit.to_i }
      sum_of_all_digits += sum.reduce(:+)
    elsif i.odd?
      sum_of_all_digits += num.to_i * 2
    else
      sum_of_all_digits += num.to_i
    end
  end

    if sum_of_all_digits % 10 == 0
      puts "Card is valid"
    else
      puts "Card is invalid"
    end
end

card_number = "5541801923795240"
puts credit_check(card_number)
