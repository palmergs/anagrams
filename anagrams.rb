require 'set'


# 1. Uniformly transform sequences of elements 
# 2. Filter sequences of elements
# 3. Combine sequences of elements using a single operation (for example to add them, concatenate them, or compute their minimum)
# 4. Accumulate sequences of elements into a collection, perhaps grouping them by some common attribute
# 5. Search a sequence of elements for an element satisfying some criterion

class Anagrams
  def run path, mode, min_count = 2, min_length = 3
    File.read(path).  
        lines. # accumulate
        map {|line| line.split(/\s+/)}. # transform
        flatten. # accumulate
        map(&:downcase). # transform 
        map {|word| word.tr(".;,!?'\"","")}. # transform
        delete_if {|word| word.length < min_length }. # filter
        each_with_object(Hash.new {|hsh,k| hsh[k] = Set.new }) {|wrd,hsh| hsh[wrd.chars.sort.join] << wrd }. # accumulate
        delete_if {|k,v| v.size < min_count}. # filter
        values. # accumulate
        sort {|lhs,rhs| mode == :count ? (lhs.size <=> rhs.size) : (lhs.to_a[0].size <=> rhs.to_a[0].size) }. # accumulate (?)
        each {|set| puts "#{ set.size } #{ set.to_a[0].size }: #{ set.to_a.join(", ") }" } # transform
  end     
end   

Anagrams.new.run(
    ARGV[0],
    (ARGV[1] || :count).to_sym,
    (ARGV[2] || 2).to_i,
    (ARGV[3] || 3).to_i)
