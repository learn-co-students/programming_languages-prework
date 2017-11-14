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


=begin
      case langs
      when :ruby
        languages[key][value][langs][:style] = [:oo]
        #puts languages[key][:ruby]
      when :javascript
        languages[key][value][langs][:style] = [:oo, :functional]
        #puts languages[key][:javascript]
      when :python
        languages[key][value][langs][:style] = [:oo]
        #puts languages[key][:python]
      when :java
        languages[key][value][langs][:style] = [:oo]
        #puts languages[key][:java]
      when :clojure
        languages[key][value][langs][:style] = [:functional]
        #puts languages[key][:clojure]
      when :erlang
        languages[key][value][langs][:style] = [:functional]
        #puts languages[key][:erlang]
      when :scala
        languages[key][value][langs][:style] = [:functional]
        puts languages[key][:scala]
      end
    end
  end
  return languages
end
=end
=begin
elsif langs == :javascript
 languages[key][langs][deets][:style] = [:oo, :functional]
end
=end
