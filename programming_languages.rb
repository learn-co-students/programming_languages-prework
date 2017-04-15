
require 'pry'

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
  new_hash = {}

  languages.each do |type, language_hash|
    #binding.pry
    language_hash.each do |name, attributes|
      #binding.pry
      new_hash[name] ||= attributes
      new_hash[name][:style] ||=[]
      new_hash[name][:style] << type


    #binding.pry
end
end
new_hash
#binding.pry
end
