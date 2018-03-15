def reformat_languages(languages)
	new_hash = {
	}
	languages.each do |key, data|
		data.each do |language, type|
			new_hash[language] = type.merge :style => []
		end
	end
	new_hash.each do |new_language, new_type|
		languages.each do |style, data|
			data.each do |language, type|
				if new_language == language
					new_hash[language][:style] << style
				end
			end
		end
	end
	new_hash
end

