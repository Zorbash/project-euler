factorise = (n) ->
  factorized       = n
  factors          = []
  candidate_factor = 2

  while candidate_factor ^ 2 <= n
    if factorized % candidate_factor == 0
      factors.push candidate_factor
      factorized = factorized / candidate_factor
    else
      candidate_factor++

  if factorized != 1
    factors.push candidate_factor

  factors

factors = factorise 600851475143
console.log factors.slice(-1)[0]

