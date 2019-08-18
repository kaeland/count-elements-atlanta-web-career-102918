def count_elements(array)
  # code goes here
  counter_hash = Hash.new(0)
  array.each do |item|
    counter_hash[item] += 1
  end
  counter_hash
end
 

# From link: http://carol-nichols.com/2015/08/07/ruby-occurrence-couting/
# The solutions below work as well: 

# arr.uniq.map { |x| [x, arr.count(x)] }.to_h
# h = Hash.new(0); arr.each { |l| h[l] += 1 }; h
# arr.reduce({}) { |m, a| m[a] = m[a].to_i + 1; m }
# arr.inject(Hash.new(0)) { |h, i| h[i] += 1; h }
# arr.sort.chunk { |ex| ex }.map { |k, v| [k, v.length] }.to_h
# arr.reduce({}) { |ret, val| ret[val] = (ret[val] || 0) + 1; ret }
# arr.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
# arr.each_with_object({}) { |item, memo| memo[item] ||= 0; memo[item] += 1 }
# arr.map { |x| { x => 1 } }.inject { |a, b| a.merge(b) { |k, x, y| x + y } }
# arr.group_by { |x| x }.map { |element, matches| [ element, matches.length ] }.to_h
# Hash[arr.group_by(&:itself).map {|k,v| [k, v.size] }] # Must also upgrade to Ruby 2.2 or Rails 4
# arr.sort.chunk(&:itself).map {|v, vs| [v, vs.count]}.to_h # Must also upgrade to Ruby 2.2 or Rails 4
