require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, lang|
    # binding.pry
    lang.each do |key, type|
      # binding.pry
      new_hash[key] = type
      new_hash[key][:style] = []
      # binding.pry
    end
  end

  languages.each do |a, b|
    # binding.pry
    b.each do |k, v|
      # binding.pry
      new_hash[k][:style] << a
      # binding.pry
    end
  end

  new_hash
end
