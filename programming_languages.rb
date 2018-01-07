def reformat_languages(languages)
  new_hash = {}
  languages.each do |orientation, language|
    language.each do |language_name, info|
      info.each do |type, ic|
        if new_hash.key?(language_name) == true
          new_hash[language_name][:style] << orientation
        else
          new_hash[language_name] = {type => ic, style: [orientation]}
        end
      end
    end
  end
  new_hash
end
