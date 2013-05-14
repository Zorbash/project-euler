(function(){
  var prelude, is_palindrome, create_products;
  prelude = require('prelude-ls');
  is_palindrome = function(n){
    var s, flag, i$, to$, i;
    s = n + "";
    flag = true;
    for (i$ = 0, to$ = s.length / 2; i$ <= to$; ++i$) {
      i = i$;
      if (s[i] !== s[s.length - i - 1]) {
        flag = false;
        break;
      }
    }
    return flag;
  };
  create_products = function(){
    var products, i$, i, j$, j, product;
    products = [];
    for (i$ = 1; i$ <= 999; ++i$) {
      i = i$;
      for (j$ = 1; j$ <= 999; ++j$) {
        j = j$;
        product = i * j;
        if (is_palindrome(product)) {
          products.push(product);
        }
      }
    }
    return products;
  };
  console.log(prelude.maximum(create_products()));
}).call(this);
