
def reformat_languages(languages)
  # your code here
  formatted_hash = {}

  languages.each do |oo_functional, comp_lang|

    comp_lang.each do |lang, lang_facts_key|

      lang_facts_key.each do |lang_type, type_string|

        if formatted_hash.include? (lang)
      formatted_hash[lang][:style].push(oo_functional)


        else formatted_hash[lang] = {
      lang_type => type_string,
      :style => [].push(oo_functional)
     }
      end


      end
    end
  end
  formatted_hash
end
