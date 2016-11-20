# Write your code here.
def dictionary
  {"hello" => 'hi',
  "to" => "2",
  "two" => "2",
  "too" => "2" ,
  "for" => "4",
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)

tweet = tweet.split(" ")
outp = []

tweet.each do |word|
  if dictionary.keys.include?(word.downcase)
    outp << dictionary[word.downcase]
  else
    outp << word
  end
end
outp.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
  arr
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)

  if tweet.length > 140
    "#{word_substituter(tweet)[0...137]}..."
  else
    tweet
  end
end
