def reformat_languages(languages)
  new = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      if new[lang] == nil
        new[lang] = {
          type: type_hash[:type],
          style: [style]
        }
      else
        new[lang][:style] << style
      end
    end
  end
  new
end