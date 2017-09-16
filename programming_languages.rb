def reformat_languages(language_hash)
  new_hash = {}
  language_hash.each do |style, language|
    language.each do |name, type|
      type.each do |the_word_type, actual_type|


        if new_hash.include?(name) == false
          new_hash[name] = {the_word_type => actual_type, style: []}
        end
        new_hash[name][:style] << style
      end
    end
  end
  new_hash
end
