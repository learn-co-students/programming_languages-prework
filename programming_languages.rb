require 'pry'

def reformat_languages(languages)
  # your code here

  new_hash = {}

#create new hash
  languages.each do |style, language_list|
    #go into list of languages
    language_list.each do |language, language_type|
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = language_type
        new_hash[language][:style] = [style]
      end

    end

  end

  new_hash

end
