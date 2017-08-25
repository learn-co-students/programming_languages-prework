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
  reformatted_languages = {}
  languages.each_key { |language_style|
    languages[language_style].each_pair { |language_name, language_attributes|
      unless (reformatted_languages.has_key? language_name)
        reformatted_languages[language_name] = language_attributes
      end

	  unless(reformatted_languages[language_name].has_key? :style)
        reformatted_languages[language_name][:style] = [language_style]
      else
        reformatted_languages[language_name][:style].push(language_style)
      end
    }
  }
  return reformatted_languages
end
