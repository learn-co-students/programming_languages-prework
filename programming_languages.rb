def reformat_languages(languages)
	new_hash = {}
	languages.each do |style, language_name|
		language_name.each do |name, type_key|
			new_hash[name.to_sym] = {}
		end
		language_name.each do |name, type_key|
			type_key.each do |type_key, type_string|
				new_hash[name.to_sym][type_key] = type_string
				new_hash[name.to_sym][:style] = []
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
