def reformat_languages(languages)
  new_hash = {}

  languages.each do |obj_or_fun, language_name|
    language_name.each do |language, com_or_int|
      com_or_int.each do |attribute, str_value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << obj_or_fun
        if new_hash[language][attribute].nil?
          new_hash[language][attribute] = str_value
        end
      end
    end
  end
  new_hash
end
