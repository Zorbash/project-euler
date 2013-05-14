(function(){
  var factorise, factors;
  factorise = function(n){
    var factorized, factors, candidate_factor;
    factorized = n;
    factors = [];
    candidate_factor = 2;
    while (Math.pow(candidate_factor, 2) <= n) {
      if (factorized % candidate_factor === 0) {
        factors.push(candidate_factor);
        factorized = factorized / candidate_factor;
      } else {
        candidate_factor++;
      }
    }
    if (factorized !== 1) {
      factors.push(candidate_factor);
    }
    return factors;
  };
  factors = factorise(600851475143);
  console.log(factors.slice(-1)[0]);
}).call(this);
