require 'pry'
def reformat_languages(languages)

  #build it downwards

  new_hash = {}
  languages.each do |kind,language_name|
    language_name.each do |language, type|
      if new_hash.has_key?(language)
        #if new_hash already has the language, just merge the kind array,
        # and the language that new_hash has
        style_array = (new_hash[language][:style] + [kind]).uniq
        style_hash = {:style => style_array}
        new_hash[language] = type.merge(style_hash)
      else
        #otherwise, just use the kind in an array
        style_array = [kind]
        style_hash = {:style => style_array}
        new_hash[language] = type.merge(style_hash)
      end
    end
  end
  new_hash
end
