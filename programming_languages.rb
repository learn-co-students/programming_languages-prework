require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |k,v|
    v.each do |key, val|
      new_hash[key] = val

          new_hash[key][:style] = [k]

      #binding.pry
    end
  end
  #binding.pry
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash
end
