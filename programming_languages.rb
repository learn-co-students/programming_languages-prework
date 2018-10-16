def reformat_languages(languages)
  hash = {}
  languages.each do |style, language|
    language.each do |name_l, type|
      type.each do |type, name_t|
        if hash.include?(name_l)
          hash[name_l][:style] << style
        else
          hash[name_l] = {:type => name_t, :style => [style]}
        end
      end
    end
  end
  hash
end
