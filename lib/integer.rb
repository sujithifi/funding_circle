class Integer

  # Returns true if the instance is a prime number
  def is_prime?
    return false  if self < 2
    2.upto(Math.sqrt(self).to_i) {|x| return false if is_divisible_by?(x) }
    true
  end

  # Returns true if the instance is fully divisible by the divisor
  def is_divisible_by?(divisor)
    self % divisor == 0 ? true : false
  end

end

