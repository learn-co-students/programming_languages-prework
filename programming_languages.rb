require 'pry'
def reformat_languages(languages)
  # your code here
  reorganized_languages = {}
  languages.each do |category, data1|
    data1.each do |language, data2|
      # reorganized_languages[language] = nil
      data2.each do |type, value|
        # binding.pry
        if reorganized_languages[language] == nil
          reorganized_languages[language] = {type => value}
        # else
        #   reorganized_languages[language][type] << value
        end
        if reorganized_languages[language][:style] == nil
          reorganized_languages[language][:style] = [category]
        else
          reorganized_languages[language][:style] << category
        end
        # binding.pry
        # reorganized_languages[language][:style] << []
        # reorganized_languages[language][lang_style:] = []
      end
    end
  end
  reorganized_languages
end
