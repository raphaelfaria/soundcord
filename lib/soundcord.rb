# encoding: utf-8

require 'soundcord/integrations/string'
require 'soundcord/integrations/array'
require 'algorithm'
require 'config'

class SoundCord
  def self.phonetize text, options = { :use_vowels => false }
    process_text(text, options)
  end

  def self.compare term_1, term_2, options = { :use_vowels => false }
    homophone? term_1, term_2, options
  end

  def self.homophone? term_1, term_2, options = { :use_vowels => false }
    phonetize(term_1, options) == phonetize(term_2, options)
  end
end
