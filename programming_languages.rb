require 'pry'
def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language|
    language.each do |language_name, attribute|
      if new_hash.include?(language_name) == false
        attribute[:style] = [style]
        binding.pry
      else new_hash[]
      end
    end
  end
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
