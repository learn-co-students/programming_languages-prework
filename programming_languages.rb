def reformat_languages(languages)
  output = Hash.new

  languages.each do |style, languages_with_types|
    languages_with_types.each do |lang_name, lang_type|
      if output[lang_name] == nil
        output[lang_name] = {
          :type => lang_type[:type],
          :style => [style]
        }
      else
        output[lang_name][:style] << style
      end
    end
  end

  output
end
