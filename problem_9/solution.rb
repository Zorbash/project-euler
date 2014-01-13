require 'pp'

def find_candidates(sum)
  #using Euclid's formula
  search_range= *(1..sum)
  cands = search_range.map do |n|
    n1 = search_range.find { |c| c * n == sum }
    next if n1.nil?
    [[n, n1], [n1, n]]
  end
  cands.compact!
  cands[0...(cands.length / 2)]
end

def is_a_triplet?(cand)
  cand[:a] ** 2 + cand[:b] ** 2 == cand[:c] ** 2
end

def make_triplet(m, n)
  trip = {
    a: 2 * m * n,
    b: m ** 2 - n ** 2,
    c: m ** 2 + n ** 2
  }
  return nil unless trip[:a] < trip[:b] && trip[:b] < trip[:c]
  return nil unless trip[:a] >= 0 && trip[:b] >= 0 && trip[:c] >= 0
  trip
end

def generate_triplets(candidates)
  trips = candidates.map do |cand|
    [make_triplet(cand[0][0], cand[0][1]), make_triplet(cand[1][0], cand[1][1])].compact
  end
  trips.flatten
end

candidates = find_candidates(50)
triplets = generate_triplets(candidates)
teh_trip = triplets.find { |trip| is_a_triplet? trip }
product = teh_trip[:a] * teh_trip[:b] * teh_trip[:c]
puts product
