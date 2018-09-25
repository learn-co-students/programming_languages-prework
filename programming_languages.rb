require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, data|
    data.each do |language, data_type|
      if new_hash.has_key?(language)
    new_hash[language][:style] << style
  else
    new_hash[language] = data_type
    new_hash[language][:type] = data_type[:type]
    new_hash[language][:style] = [style]
    end
  end
end
new_hash
end
