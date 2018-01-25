def reformat_languages(languages)
  new = {}
  languages.each do |style, language|
    language.each do |name, type|
      new[name] = type if new[name] == nil
      new[name][:style] = [] if new[name][:style] == nil
      new[name][:style] << style
    end
  end
  new
end