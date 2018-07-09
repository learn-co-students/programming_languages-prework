require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_hash|
    # puts "#{style}: #{language_hash}"
    language_hash.each do |language, attribute_hash|
      # new_hash[language] = attribute_hash
      #
      # if new_hash[language][attribute_hash].nil?
      #   new_hash[language][:style] ||= [style]
      # else
      #   new_hash[language][:style].push(style)
      # end
      attribute_hash.each do |attribute, value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style].push(style)

        if new_hash[language][attribute].nil?
          new_hash[language][attribute] = value
        end
      end
    end
  end
  new_hash


end
