require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang|
    lang.each do |key, value|
      value.each do |type, desc|
        #binding.pry
        if new_hash[key].nil?
        new_hash[key] = {type => desc, :style => []}
        new_hash[key][:style] << style
      else
        new_hash[key][:style] << style
      end
      end
    end
  end
  new_hash
end
