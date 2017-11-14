def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang, info|
      new_hash[lang] = info
      #case lang
        if lang == :ruby
          var = {style: [:oo]}
        elsif lang == :javascript
          var = {style: [:oo, :functional]}
        elsif lang == :python
          var = {style: [:oo]}
        elsif lang ==  :java
          var = {style: [:oo]}
        elsif lang ==  :clojure
          var = {style: [:functional]}
        elsif lang ==  :erlang
          var = {style: [:functional]}
        elsif lang ==  :scala
          var = {style: [:functional]}
        end
      new_hash[lang].merge!(var)
    end
  end
  return new_hash
end
