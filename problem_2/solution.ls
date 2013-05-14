__ = require 'underscore'

fibonacci = __.memoize (n) ->
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)

sum = 0
i   = 0

while true
  f = fibonacci i
  sum += f if f %% 2 is 0
  break if f >= 4_000_000
  i++

console.log(sum)