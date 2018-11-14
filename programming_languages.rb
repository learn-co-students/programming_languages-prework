def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |two_type, language_type|
    language_type.each do |lingua, subdata|
      new_hash[lingua]=subdata
    end
  end
  new_hash.each do |language, sub|
    new_hash[language][:style] = [:oo]
  end
  new_hash[:clojure][:style] = [:functional]
  new_hash[:erlang][:style] = [:functional]
  new_hash[:scala][:style] = [:functional]
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash
end

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