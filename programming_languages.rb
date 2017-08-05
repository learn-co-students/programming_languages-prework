
def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_type, lang_hash|
    lang_hash.each do |lang, type_hash|
      type_hash.each do |type, int_or_comp|
        if new_hash[lang].nil?
          new_hash[lang] = {}
        end
        new_hash[lang][:style] ||= []
        new_hash[lang][:style] << lang_type
        if new_hash[lang][type].nil?
          new_hash[lang][type] = int_or_comp
        end
      end
    end
  end
  new_hash
end
