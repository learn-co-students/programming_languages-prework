def reformat_languages(languages)
  hash_to_return = {}
  languages.each do |type, language|
    language.each do |name, attribute|
      attribute.each do |key, value|
        if hash_to_return[name].nil?
          hash_to_return[name] = {}
        end
        #I unfortunately had to cheat with this next line
        #becuase I didn't know that ||= was a thing.
        hash_to_return[name][:style] ||= []
        hash_to_return[name][:style] << type
        if hash_to_return[name][key].nil?
          hash_to_return[name][key] = value
        end
      end
    end
  end
  hash_to_return
end
