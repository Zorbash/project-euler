require 'prime'

primes = []

Prime.each(1000_000) {|prime| primes << prime }
puts primes[10000]
