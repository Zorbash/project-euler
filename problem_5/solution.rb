s = 7000000 # smallest evenly divisable

loop do
  if ((1..20).find { |num| s % num != 0 }).nil?
    break
  else
    s = s + 1
  end
end

puts s
