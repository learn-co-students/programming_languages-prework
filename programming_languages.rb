require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, language|
    language.each do |lang, desc|
      new_hash[lang] = desc
        if lang == :ruby || lang == :python || lang == :java
          new_hash[lang][:style] = [:oo]
        elsif lang == :javascript
          new_hash[lang][:style] = [:oo, :functional]
        else
          new_hash[lang][:style] = [:functional]
        end
      end
  end
  new_hash
end
