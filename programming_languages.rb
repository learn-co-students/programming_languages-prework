def reformat_languages(reformat)
  new_hash = {}

  reformat.each do |k,v|
    v.each do |lang, type|
      new_hash[lang] ||= type
      new_hash[lang][:style] ||= []
      new_hash[lang][:style] << k
    end

  end
  new_hash
end
