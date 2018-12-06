def reformat_languages(languages)
  
  new_hash = {}
  
  languages.each do |x,v|
    v.each do |language, values|
      new_hash[language] = values
    end
  end
  
  new_hash[:ruby][:style] = [:oo]
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash[:python][:style] = [:oo]
  new_hash[:java][:style] = [:oo]
  new_hash[:clojure][:style] = [:functional]
  new_hash[:erlang][:style] = [:functional]
  new_hash[:scala][:style] = [:functional]
  
  
  new_hash
 end
