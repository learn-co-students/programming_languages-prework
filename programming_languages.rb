require 'pry'

def reformat_languages(languages)
    new_hash = {}
 	languages.each do |style, language_name|
    #binding.pry
 		language_name.each do |name, type_key|
      #binding.pry
 			new_hash[name] = {}
      #binding.pry
 		end
 		language_name.each do |name, type_key|
      #binding.pry
 			type_key.each do |type_keys, type_string|
        #binding.pry
 				new_hash[name][type_keys] = type_string
        #binding.pry
 				new_hash[name][:style] = []
 			end
 		end
 	end
 	languages.each do |style, language_name|
 		language_name.each do |name, type|
 			if new_hash.any? {|k,v| k == name}
 				new_hash[name][:style] << style
 			end
 		end
 	end
 	new_hash
  end
