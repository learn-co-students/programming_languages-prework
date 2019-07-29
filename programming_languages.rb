require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  style_arr = languages.keys
  languages.collect do |style, style_data|
    # cur_style[0] = style
    # binding.pry
    style_data.collect do |language, language_data|
      # binding.pry
      language_data.collect do |feature, feature_value|
      # binding.pry
        if language == :javascript
          new_hash[language] = {
          feature => feature_value,
          :style => style_arr
        } 
        else 
          new_hash[language] = {
            feature => feature_value,
            :style => [style]
          } 
          # binding.pry
        end
      end
    end 
  end
  new_hash
  # binding.pry
end
