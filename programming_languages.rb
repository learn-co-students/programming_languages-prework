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
  hash = {}
  languages.each do |type, lang_hash|
    lang_hash.each do |name, int_or_comp|
      hash[name] ||= int_or_comp
      hash[name][:style] ||= []
      hash[name][:style] << type
      
    end
  end
  hash
end

reformat_languages(languages)

