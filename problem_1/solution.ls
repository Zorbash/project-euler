sum = 0
multiples = for i from 3 to 999 when (i %% 3 is 0 or i %% 5 is 0)
  sum = sum + i
  i

console.log 'multiples', multiples
console.log 'sum', sum