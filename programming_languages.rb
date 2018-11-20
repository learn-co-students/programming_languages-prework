require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, language|
    language.each do |name, data|
      new_hash[name] = data if new_hash[name] == nil
      # binding.pry
      new_hash[name][:style] = [] if new_hash[name][:style] == nil
      new_hash[name][:style] << style
      # binding.pry
    end
  end
  # binding.pry
  new_hash
end
