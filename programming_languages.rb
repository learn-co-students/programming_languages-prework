require "pry"

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
  languages.each do |oo_funct, lang_hash|
    lang_hash.each do |lang_name, type_hash|
      if new_hash.keys.include?(lang_name)
        new_hash[lang_name][:style] << oo_funct
      else
        new_hash[lang_name] = {
          type: type_hash[:type],
          style: [oo_funct]
        }
      end
    end
  end
  new_hash
end
