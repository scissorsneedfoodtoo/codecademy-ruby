puts "Let's hash it out. Give me a sentence: "
text = gets.chomp.downcase.gsub(/[[:punct:]]/, '')

text_arr = text.split(" ")

sentence_hash = {}
text_arr.each do |word|
  if sentence_hash[word]
    sentence_hash[word] += 1
  elsif word.length > 0
    sentence_hash[word] = 1
  end
end

sentence_hash.each{ |word, count| puts "#{word}: #{count}"}
