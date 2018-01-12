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

  languages.each do |style, language|
    language.each do |language, type|
      type.each do |type, value|
        if new_hash[language] != nil
          new_hash[language][:style] << style
        else new_hash[language].nil?
          new_hash[language] = {type: value, style: [style]}
        end
      end
    end
  end
  new_hash
end
