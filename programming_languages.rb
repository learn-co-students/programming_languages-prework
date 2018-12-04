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

  languages.each { |style, style_v|
    style_v.each { |lang, lang_v|
      lang_v.each { |type, type_v|
        if new_hash[lang].nil?
          new_hash[lang] = {type => type_v, :style => []}
          new_hash[lang][:style] << style
        else
          new_hash[lang][:style] << style
        end
      }
    }
  }
  new_hash
end

reformat_languages(languages)
