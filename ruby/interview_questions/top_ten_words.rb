def top_ten_words
  word_array = []
  word_hash = {}
  
  File.open(ARGV[0]).each_line do |line|
   word_array.push line.chomp.downcase.gsub(/[.||,||)||(||:]/, "").split(/\s+/)
  end

  word_array.flatten.each do |word|
    word_hash[word] = ((word_hash[word] || 0) + 1)
  end

  result = word_hash.sort_by {|key, value| value}
  result.reverse
end

puts top_ten_words