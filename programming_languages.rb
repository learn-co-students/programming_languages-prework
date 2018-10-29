require 'pry'
require 'byebug'

def reformat_languages(languages)
  new_hsh = {}

  languages.each do |key, value|
    value.each do |lang, types|
      new_hsh[lang] = {} if new_hsh[lang].nil?
      new_hsh[lang][:style] = [] if new_hsh[lang][:style].nil?
      new_hsh[lang][:type] = types.values.first
      new_hsh[lang][:style] << key
    end
  end
  new_hsh
end
