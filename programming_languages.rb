




def reformat_languages(languages)
  # your code here
  new_hash = Hash.new
  styles = []
  
  languages.each do |style, value|
    
    if style.to_s == "oo"
      languages[style].each do |language, value|
        new_hash[language] = value
        new_hash[language][:style]= [] << style
        
      end
    end
    if style.to_s == "functional"
      languages[style].each do |language, value|
        if new_hash[language] == nil
          new_hash[language] = value
          new_hash[language][:style]= [] << style
        else
          new_hash[language][:style]<< style
        end
      end
    end
  end
  return new_hash
end



  


