require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = Hash.new
  languages.each do |type, data|
    data.each do |language, info|
      new_hash[language] = info
      new_hash[language][:style] = Array.new
    end
  end
  languages.each do |type, data|
    data.each do |language, info|
      new_hash[language][:style] << :oo if type == :oo
      new_hash[language][:style] << :functional if type == :functional
    end
  end
  new_hash
end
