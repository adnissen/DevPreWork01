require 'Prime'
# just use the sweet prime class to get all the factors
total_primes = Prime.prime_division(600851475143)
highest = 0
# just loop through and get the highest one
for prime in total_primes
  if prime[0] > highest
    highest = prime[0]
  end
end

puts highest.to_s
