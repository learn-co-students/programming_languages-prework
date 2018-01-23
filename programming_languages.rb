require 'pry'

def reformat_languages(languages)
  # your code here
  final_hash = {}
  languages.each do |prgrm, styles|
    styles.each do |language, type_hash|
      if final_hash.keys.include?(language)
        final_hash[language][:style].push(prgrm)
      else
        final_hash[language] = {:type => type_hash.values[0],
                            :style => [prgrm]}
      end
    end
  end

  final_hash

end
