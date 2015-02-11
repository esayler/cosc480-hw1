def combine_anagrams(words)
  h = {}
  words.each do |w|
    sorted_word = w.downcase.chars.sort.join
    if h.has_key?(sorted_word)
      h[sorted_word] << w
    else
      h[sorted_word] = [w]
    end
  end
  h.values
end
