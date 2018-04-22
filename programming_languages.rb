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
  languages.each do |style, data|
      data.each do |language, value|
        value.each do | type, type1 |
          if new_hash.keys.include?(language)
              new_hash[language][:style] << style
          else
              new_hash[language] = { style: [style], type: type1 }
          end
        end
    end
  end
  return new_hash
end
