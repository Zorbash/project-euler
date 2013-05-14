prelude = require \prelude-ls

is_palindrome = (n) ->
  s = n + ""
  flag = true
  for i from 0 to (s.length / 2)
    if s[i] != s[s.length - i - 1]
      flag = false
      break

  flag

create_products = ->
  products = []
  for i from 1 to 999
    for j from 1 to 999
      product = i * j
      products.push product if is_palindrome product
  products

console.log prelude.maximum(create_products!)