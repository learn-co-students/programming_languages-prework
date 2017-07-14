def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
      language.each do |name, atts|
          atts.each do |type, type_value|
                new_hash[name] = {type => type_value, :style => []} unless new_hash.include?(name)
                  new_hash[name][:style] << style
                end
          end
      end
  new_hash
end
