require "pry"
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, details|
  	details.each do |lang, type|
  		type.each do |key, value|
  			new_hash[lang] = { style: [], type: value }
  		end
  	end
  end
  languages.each do |style, details|
  	details.each do |lang, type|
  		new_hash[lang][:style] << style
  	end
  end
  return new_hash
end
