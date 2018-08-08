

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}



def reformat_languages(languages)

  new_hash = { }

  languages.each do |kind, languages|
    languages.each do |language, attributes|

        new_hash[language] = { }

      	if language == :ruby
          new_hash[language] = attributes
          new_hash[language][:style] = [:oo]

        elsif language == :javascript
          new_hash[language] = attributes
          new_hash[language][:style] = [:oo, :functional]

        elsif language == :python
          new_hash[language] = attributes
          new_hash[language][:style] = [:oo]

        elsif language == :java
          new_hash[language] = attributes
          new_hash[language][:style] = [:oo]

        elsif language == :clojure
          new_hash[language] = attributes
          new_hash[language][:style] = [:functional]

        elsif language == :erlang
          new_hash[language] = attributes
          new_hash[language][:style] = [:functional]

        elsif language == :scala
          new_hash[language] = attributes
          new_hash[language][:style] = [:functional]

        end #of 2nd level iteration if statement

    end
  end

	new_hash
end
