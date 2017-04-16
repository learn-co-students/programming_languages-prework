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
  # your code here
  new_hash = {}

  languages.each do |style, name|
    name.each do |trait, type|
      case trait
      when :ruby, :python, :java
        type[:style] = [:oo]
      when :javascript
        type[:style] = [:oo, :functional]
      when :clojure, :erlang, :scala
        type[:style] = [:functional]
      end

      new_hash[trait] = type
    end
  end

  new_hash
end

#reformat_languages(languages)
