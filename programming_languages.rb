def reformat_languages(languages)
	answer = Hash.new []
	languages.each do |style, data|
		data.each do |language, type|
			if answer.member?(language)
				answer[language][:style] << style
			else
				answer[language] = type.merge(:style => [style])
			end
		end
	end
	answer
end