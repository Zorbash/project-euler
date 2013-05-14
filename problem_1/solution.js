(function(){
  var sum, multiples, res$, i$, i, ref$;
  sum = 0;
  res$ = [];
  for (i$ = 3; i$ <= 999; ++i$) {
    i = i$;
    if (((i) % (ref$ = 3) + ref$) % ref$ === 0 || ((i) % (ref$ = 5) + ref$) % ref$ === 0) {
      sum = sum + i;
      res$.push(i);
    }
  }
  multiples = res$;
  console.log('multiples', multiples);
  console.log('sum', sum);
}).call(this);
