require 'pry'

def languages
  {
  :oo => {
    :ruby => {:type => "interpreted"},
    :javascript => {:type => "interpreted"},
    :python => {:type => "interpreted"},
    :java => {:type => "compiled"}
  },
  :functional => {
    :clojure => {:type => "compiled"},
    :erlang => {:type => "compiled"},
    :scala => {:type => "compiled"},
    :javascript => {:type => "interpreted"}

  }
}
end

def language_hash
  languages.fetch(:oo).merge(languages.fetch(:functional))
end

def reformat_languages(languages)
  # your code here
  languages2 = language_hash
  languages2.each { |lang, type|
    if languages[:oo].include?(lang) && languages[:functional].include?(lang)
      type[:style] = [:oo, :functional]
    elsif languages[:oo].include?(lang)
      type[:style] = [:oo]
    elsif languages[:functional].include?(lang)
      type[:style] = [:functional]
    end
  }
  languages2
end
