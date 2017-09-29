def reformat_languages(languages)
  reformatted = {}
  languages.each do
    |style, languageTypeHash|
    languageTypeHash.each do
      |languageName, typeHash|
      typeHash.each do
        |type, typeValue|

        if reformatted.key?(languageName) == false
          reformatted[languageName] = {type => typeValue, style: [style]}
        else
          reformatted[languageName][:style] << style
        end
      end
    end
  end

  return reformatted
end
