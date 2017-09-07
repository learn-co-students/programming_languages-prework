def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |pstyle, hash1|
    hash1.each do |language, hash2|

      if new_hash[language].nil?
        new_hash[language] = {}
      end

      if new_hash[language][:style].nil?
        new_hash[language][:style] = []
      end

      new_hash[language][:style] << pstyle
      new_hash[language] = new_hash[language].merge(hash2)

    end
  end
  new_hash
end
