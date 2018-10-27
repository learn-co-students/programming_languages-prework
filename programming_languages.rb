require 'pry'

def reformat_languages(languages)
  new_languages = {}
  # binding.pry
  languages.each do |style, languages|
    languages.each do |lang_name, value|
        # binding.pry
      new_languages[lang_name] ||= value
      new_languages[lang_name][:style] ||= []
      new_languages[lang_name][:style] << style
      # binding.pry
    end
  end
  # binding.pry
  new_languages
end
