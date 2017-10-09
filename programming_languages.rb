def reformat_languages(languages)
  newhash = {}

  languages.each do |style, language|
    language.each do |language, type|
      type.each do |type, type_spec|
        if newhash[language] == nil
          newhash[language] = {type => type_spec, :style => [style]}
        else
          newhash[language] = {type => type_spec, :style => languages.keys}
        end
      end
    end
  end
  return newhash
end