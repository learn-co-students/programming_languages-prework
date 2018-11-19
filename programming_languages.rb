def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, typeinfo|
      typeinfo.each do |type, int_or_comp|
        if new_hash[name].nil?
          new_hash[name] = {}
        end 
          new_hash[name][:style] ||= []
          new_hash[name][:style] << style
          new_hash[name][:type] = int_or_comp
      end 
    end 
  end
  new_hash
end
