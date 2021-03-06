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
    empty << emoticon       #add all the emoticons to a new array 
    end
  end
  hash = Hash[*empty]        #build a hash english emoticon as key and japanese as value 
  emote = hash[emoticon]      #call japanese emoticon with english emoticon
  if emote == nil
    emote = "Sorry, that emoticon was not found" 
  end
emote 
end


def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  invert = emoticon_hash.invert 
  emotes = []
  invert.each do |emos, eng|
    emotes << eng
    emos.each_with_index do |object, index| 
      if index.odd?
        emotes << object
      end 
    end
  end
  e = emotes.flatten
  e.delete(:japanese)
  hash = Hash[*e]
  english = hash.invert
  eng = english[emoticon]
  if eng == nil
    eng = "Sorry, that emoticon was not found" 
  end
eng 
end 
















