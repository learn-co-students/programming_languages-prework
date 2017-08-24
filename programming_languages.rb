def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, a|
    a.each do |lang, type|
      if !new_hash.has_key?(lang)  # IF undefined, create everything
        new_hash[lang] = type
        new_hash[lang][:style] = [style]
      else                         # ELSE already defined, just shovel the style
        new_hash[lang][:style] << style
      end
    end
  end
  new_hash
end
