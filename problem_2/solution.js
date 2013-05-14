(function(){
  var __, fibonacci, sum, i, f, ref$, this$ = this;
  __ = require('underscore');
  fibonacci = __.memoize(function(n){
    if (n < 2) {
      return n;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  });
  sum = 0;
  i = 0;
  for (;;) {
    f = fibonacci(i);
    if (((f) % (ref$ = 2) + ref$) % ref$ === 0) {
      sum += f;
    }
    if (f >= 4000000) {
      break;
    }
    i++;
  }
  console.log(sum);
}).call(this);
