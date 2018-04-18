require 'pry'
def reformat_languages(languages)
  # your code here
  reformatted_hash = {}

  languages.each do |style, language_list|
    language_list.each do |language, type|
      type.each do |key, type_name|
        if reformatted_hash[language] == nil
          reformatted_hash[language] = {
            :type => type_name
          }
        end
        if reformatted_hash[language][:style] == nil
          reformatted_hash[language][:style] = [style]
        else
          reformatted_hash[language][:style] << style
        end
      end
    end
  end
  reformatted_hash
end
