require "pry"


def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |oo_or_functional,language_hash|
  	language_hash.each do |language,value|
  		new_hash[language] ||= value
  		new_hash[language][:style] ||= []
  		new_hash[language][:style] << oo_or_functional
  	end
  end
  new_hash
end
