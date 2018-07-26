require 'pry'

def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |key, val|
    styleName = key
    #binding.pry
    val.each do |key2, val2|
      if new_hash.include?(key2)
        new_hash[key2][:style] << styleName
      else
        new_hash[key2] = val2
        new_hash[key2][:style] = [styleName]
      end
      #binding.pry
    end
    #binding.pry
  end
  #binding.pry
  new_hash
end
