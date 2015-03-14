class Prime

  class << self

    # Prints a formatted multiplication table for first n prime numbers
    def generate_prime_table(n)
      return if n < 1
      nums        = Prime.get(n)
      max_digits  = 2 * (Math.log10(nums.last).to_i + 2 )
      print ' ' * max_digits
      nums.each { |x| print x.to_s.rjust(max_digits,' ') }
      print $/
      nums.each do |row|
        [1,*nums].each do |col|
          print (row*col).to_s.rjust(max_digits,' ')
        end
        print $/
      end
    end

    # Returns the first n prime numbers
    def get(n)
      n.times.inject([]){ |primes| primes << get_next_prime(primes.last) }
    end

    private

    # Returns the next prime number after num ( num should be nil or a prime number )
    def get_next_prime(num)
      return 2 if num.nil?
      return 3 if num == 2
      loop do
        num += 2
        return num if num.is_prime?
      end
    end

  end

end
