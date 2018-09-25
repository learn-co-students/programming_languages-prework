def reformat_languages(languages)
  languages.map |language|
    case language 
    when :ruby
      :ruby << [:style] = [:oo]
   
    
    
     when :javascript
      :javascript << [:style] = [:oo, :functional]
    
    when :python
      :python << [:style] = [:oo]
      
     when :java
      :java << [:style] = [:oo]  
    
     when :clojure  
      :clojure << [:style] = [:functional]
      
     when :erlang
      :erlang << [:style] = [:functional]
      
     when :scala
      :scala << [:style] = [:functional]
      
    end
end
