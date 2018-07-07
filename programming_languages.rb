def reformat_languages(languages)
  # your code here
new_hash = {}
languages.each do |k, v|
  v.each do |language, type|
    new_hash[language] = type
    if language ==:ruby 
      new_hash[language].merge!({:style => [:oo]})
      elsif language == :javascript 
      new_hash[language].merge!({:style => [:oo, :functional]})
      elsif language == :python
      new_hash[language].merge!({:style => [:oo]})
      elsif language == :java 
      new_hash[language].merge!({:style => [:oo]})
      elsif language == :clojure
      new_hash[language].merge!({:style => [:functional]})
      elsif language == :erlang
      new_hash[language].merge!({:style => [:functional]})
      elsif language == :scala
      new_hash[language].merge!({:style => [:functional]})
      end
  end
end
new_hash
 end
