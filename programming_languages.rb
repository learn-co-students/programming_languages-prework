def reformat_languages(languages)
new_hash = {}
  languages.each do |styles, language|
    language.each do |name, type|
      type.each do |a, b|
        if new_hash.length < 7
      new_hash[name] = { a => b, :style => [styles]}
    else
          new_hash[:javascript][:style] << styles
    end
  end
end

  end
new_hash
end
