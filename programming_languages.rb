require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages[:oo].each do |language, value|
      new_hash[language] = {
          type: value[:type],
          style: [:oo]
      }
  end
  languages[:functional].each do |language, value|
      if !new_hash[language].nil?
          new_hash[language][:style] << :functional
      else
          new_hash[language] = {
              type: value[:type],
              style: [:functional]
          }
      end
  end
  new_hash
end
