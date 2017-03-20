require 'pry'

def reformat_languages(languages)
  hash = {}
  languages.each do |style, langs|
    langs.each do |lang, type|
      hash[lang] = type
      hash[lang][:style] = []
      hash[lang][:style] << style
    end
  end
  hash[:javascript][:style] << :oo # unsure why :oo isn't also pushed to js, or if it's being overwritten
  hash
end


