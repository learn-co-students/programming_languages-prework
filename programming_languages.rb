def reformat_languages (languages)
  new_hash = {}

  languages.each do |first, second|
    second.each do |key, value|
      value.each do |type, string|
        new_hash[key] = {type: string, style: []}
      end
    end
  end

  x = new_hash.keys

  languages.each do |first, second|
    second.each do |key, value|
      x.each do |name|
        if key === name
          new_hash[key][:style] << first
        end
      end
    end
  end

  return new_hash
end
