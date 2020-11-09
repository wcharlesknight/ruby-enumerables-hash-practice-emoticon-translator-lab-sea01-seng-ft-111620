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
end
binding.pry 

def get_english_meaning(path, emoticon)
end 
















