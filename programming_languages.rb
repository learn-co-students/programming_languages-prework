def reformat_languages(languages)
	new_hash = {}
	languages.each do |oo_functional, language_keys|
		language_keys.each do |language_names, type_keys|
			new_hash[language_names] = {}
		end
		language_keys.each do |language_names, type_keys|
			type_keys.each do |type_keys, compiled_interpreted|
				new_hash[language_names][type_keys] = compiled_interpreted
				new_hash[language_names][:style] = []
			end
		end
	end
	languages.each do |oo_functional, language_keys|
		language_keys.each do |language_names, type_keys|
			if new_hash.any? {|k,v| k == language_names}
				new_hash[language_names][:style] << oo_functional
			end
		end
	end
	new_hash
end
