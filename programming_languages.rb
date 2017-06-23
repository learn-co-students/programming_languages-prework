def reformat_languages(languages)
  oo = languages[:oo].keys
  functional = languages[:functional].keys

  all_languages = oo + functional
  all_languages.uniq!
  new_languages = {}

  all_languages.each do |language|
    styles = []
    if oo.include?(language)
      new_languages.merge!({language => languages[:oo][language]})
      styles.push << :oo
    end

    if functional.include?(language)
      new_languages.merge!({language => languages[:functional][language]})
      styles << :functional
    end
    new_languages[language][:style] = styles
  end
  new_languages
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

reformat_languages(languages)
