require "yaml"
require 'pry'


def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = {}
  
  emoticons.each do |word, set|
    emoticons[word] = {:english => set.first, :japanese => set.last}
  end
end

def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  empty = []
  emoticon_hash.each do |word, symbols|
   symbols.each do |k, v|
     empty << v  
     empty = empty.each_slice(2).map do |a,b|
       [a, b].to_h 
     end 
   end 
  end
  binding.pry 
end

def get_english_meaning(path, emoticon)
end 
















