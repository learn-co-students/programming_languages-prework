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
  language_names_array = []

  languages.each do |type, name|
    language_names_array << name.keys
  end

  names = language_names_array.flatten.uniq

  names.each do |language|
    new_hash[language] = {}
  end


  new_hash.each do |language, data|
    languages.each do |type, name|
      if name.keys.include?(language)
    data[:type] = languages[type][language][:type]
      end
    end
  end

new_hash.each do |language, data|
  data[:style] = []

  languages.each do |type, name|
    if name.keys.include?(language)

      data[:style] << type

    end
  end
end

  new_hash
end
