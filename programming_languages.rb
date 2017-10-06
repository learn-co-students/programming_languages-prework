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
  languages.each do |key1, lev2|
    lev2.each do |lang_name, char|
      if hash[lang_name] == nil
        hash[lang_name] = {}
      end
      char.each do |type3, type_name|
        hash[lang_name][type3] = type_name
        if hash[lang_name][:style] != nil
          hash[lang_name][:style] = hash[lang_name][:style] << key1
        else
          hash[lang_name][:style] = [] << key1
        end
      end
    end
  end

  hash
end
