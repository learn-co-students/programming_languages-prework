require 'pry'

def reformat_languages(languages)
  new_hash = {}
  multiple_style_array = []
  language_array = []
  # your code here
  languages.each do |first_key, language_hashes|
    language_hashes.each do |language, data|
      new_hash[language] = data


      if !multiple_style_array.include?(first_key)
        multiple_style_array << first_key
      end

      if language_array.include?(language)
        new_hash[language][:style] = multiple_style_array
      else
        new_hash[language][:style] = []
        new_hash[language][:style] << first_key
      end
      language_array << language
    end
  end
  new_hash
end
