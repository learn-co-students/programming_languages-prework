def reformat_languages(languages)
  hash = {}
  languages.each do |key, value|
    value.each do |k, v|
      if hash[k]
        hash[k][:style] << key
      else
        hash[k] = v
        hash[k][:style] = [key]
      end
    end
  end
  hash
end
