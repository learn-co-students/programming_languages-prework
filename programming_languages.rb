def reformat_languages(languages)
  # your code here
  new_hash = {}
  # styles = languages.keys
  # types = languages.values
  languages.each do |styles,types|
    types.each do |type,value|
      new_hash[type] = value
      new_hash[type][:style] = []
    end
  end

  languages.each do |styles,types|
    types.each do |type,value|
      new_hash[type][:style] << styles
    end
  end
#    new_hash[type][:style] << styles.to_s

  new_hash
end
