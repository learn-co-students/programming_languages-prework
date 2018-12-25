def reformat_languages(languages)
  # your code here
  style = {}
  new_hash = {}
  languages.each do |k, v|
    language_name = v.keys
    language_name.each do |name|
      if v[name] != nil
        new_hash[name] = v[name]
      end
      if style[name] == nil
        style[name] = [k]
      else
        style[name] << k
      end
      new_hash[name][:style] = style[name]
    end
  end
  new_hash
end
