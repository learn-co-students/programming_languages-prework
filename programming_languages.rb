
def reformat_languages(languages)
    new_hash = {}
    languages.each do |styles, style_hash|
        style_hash.each do |language, language_hash|
            new_hash[language] = language_hash
                new_hash.each do |k, v|
                    case k
                        when :clojure
                            v[:style] = [:functional]
                        when :erlang
                            v[:style] = [:functional]
                        when :scala
                            v[:style] = [:functional]
                        when :javascript
                            v[:style] = [:functional, :oo]
                        when :ruby
                            v[:style] = [:oo]
                        when :java
                            v[:style] = [:oo]
                        when :python
                            v[:style] = [:oo]
                    end
                end
        end
    end
    new_hash
end
















