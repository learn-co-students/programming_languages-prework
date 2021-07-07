require 'pry'
def reformat_languages(language_styles)
  new_hash = {}

  language_styles.each do |style, languages|
    languages.each do |language_name, attribute|
      if new_hash.include?(language_name)
        new_hash[language_name][:style] << style
      else
        new_hash[language_name] = attribute
        new_hash[language_name][:style] = [style]
      end
    end
  end
  new_hash
end


=begin
  languages[:oo].each do |language_name, attributes|
    languages[:oo][language_name][:style] = [:oo]
    new_hash = languages[:oo]
  end

  languages[:functional].each do |language_name, attributes|

  if new_hash.include?(language_name) == true
      new_hash[language_name][:style].push(:functional)
      binding.pry
    else
      languages[:functional][language_name][:style] = [:functional]
      new_hash = languages[:functional]
    end
binding.pry
  end
  new_hash
=end
