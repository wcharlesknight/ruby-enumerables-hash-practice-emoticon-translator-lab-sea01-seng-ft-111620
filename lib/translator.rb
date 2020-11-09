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
  emoticon_hash.each do |word, language|
    language.each do |lang, emoticon|
     empty << emoticon 
    end
  end
  hash = Hash[*empty]
  emote = hash[emoticon]
  if emote == nil
    result = "Sorry, that emoticon was not found" 
  end
  emote 
end


def get_english_meaning(path, emoticon)
end 
















