def substrings(word, hash)
  # Convert the input word to lowercase for case-insensitive comparison
  word = word.downcase
  result = Hash.new(0) # Initialize a hash with default value of 0

  # Iterate through each substring in the dictionary
  hash.each do |substring|
    # Convert substring to lowercase for case-insensitive comparison
    substring = substring.downcase
    # Count occurrences of the substring in the word
    # string.scan(pattern) look for occurrences of a word in the hash
    # array.size returns the number of elements in an array.
    count = word.scan(substring).size 
    # If the substring is found at least once, add it to the result hash
    result[substring] = count if count > 0
  end

  result
end