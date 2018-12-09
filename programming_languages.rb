def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |oo_functional, language|
    language.each do |prog_lang, type|
      type.each do |attribute, text|
        if new_hash[prog_lang].nil?
          new_hash[prog_lang] = {}
          new_hash[prog_lang][:style] = []
        end
        new_hash[prog_lang][:style] << oo_functional
        if new_hash[prog_lang][attribute].nil?
          new_hash[prog_lang][attribute] = text
        end
      end
    end
  end
  new_hash
end
