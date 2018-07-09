def reformat_languages(languages)
  # your code here
  new_languages = {}
  languages.each do |styles, language_hash|
    language_hash.each do |code, code_hash|
      new_languages[code] = {
        :type => code_hash[:type],
        :style => []
      }
    end
  end
    languages.each do |styles, language_hash|
      language_hash.each do |code, code_hash|
        new_languages[code][:style] << styles
      end
    end
new_languages
end
