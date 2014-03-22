(defn triplet-prod []
  (for [a (range 1 998)
        b (range a 999)
        c [(- 1000 a b)]
        :when (= (+ (* a a) (* b b)) (* c c))]
    (bigint (* a b c))))

(println (triplet-prod))
