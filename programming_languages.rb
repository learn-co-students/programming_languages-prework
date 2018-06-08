require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |styles, langs|
    #binding.pry
    langs.each do |name, attributes|
      #binding.pry
      attributes.each do |key, value|
        #binding.pry
        if new_hash.key?(name)
          new_hash[name][:style] << styles
        else
          new_hash[name] = { style: [styles], type: value } 
        end
      end
    end
  end
  #binding.pry
  new_hash
end
