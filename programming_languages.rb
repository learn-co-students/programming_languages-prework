require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, programming_language|
  		programming_language.each do |program, quality|
  			if !(new_hash.has_key?(program))
  			  quality[:style] = [style]
  			  new_hash[program] = quality
  			else
  				new_hash[program] = {:type => "interpreted", :style => [:oo, :functional]}
  			end
  		end
  	end
  	  new_hash
end
  			






