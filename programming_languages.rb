require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |function|
    function[1].keys.each do |language|
      if new_hash.keys.include?(language)
        new_hash[language][:style]<<function[0]
      else
        new_hash[language] = {type: function[1][language][:type], style: [function[0]]}
      end
    end
  end
  new_hash
end
