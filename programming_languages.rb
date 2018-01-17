def reformat_languages(languages)
  # puts "**********************#{languages}"
  hash = {}
  languages.each do |style, style_languages|
    current_style = style
    style_languages.each do |language, properties|
      hash[language]=properties  if hash[language].nil?
      hash[language][:style] = [] if hash[language][:style].nil?
      hash[language][:style] << current_style
      # puts "**********#{language}::#{current_style}"
    end #style_languages
  end #each languages
  # puts "*****************************************#{hash[:javascript][:style]}"
  hash
end

# functional =>{
#   :javascript => {   :type => "interpreted"}
# }

# :javascript => {
#   :type => "interpreted",
#   :style => [:oo, :functional]
# },
