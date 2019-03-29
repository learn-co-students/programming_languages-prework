def reformat_languages(languages)
  # your code here
  output = {}

  languages.each do |lang_type, languages_list|
    languages_list.each do |language, lang_properties|
      output[language] = output[language] || {
        type: lang_properties[:type],
        style: []
      }
      output[language][:style] << lang_type
    end
  end

  output
end
