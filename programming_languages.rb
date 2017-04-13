require 'byebug'

def reformat_languages(languages)
  hash = {}
  languages.each do |k, language|
    language.each do |lang, type|
      hash[lang] ||= {}
      hash[lang][:style] ? hash[lang][:style] << k : hash[lang][:style] = [k]
      hash[lang][:type] ? next : hash[lang][:type] = type[:type]
    end
  end

  hash

  # your code here
end
