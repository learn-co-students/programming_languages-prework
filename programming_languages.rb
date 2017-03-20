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
  keys = languages.keys
  lang_keys = []
  lang_keys << languages[:oo].keys
  lang_keys << languages[:functional].keys
  lang_keys.each do |k|
    new_hash = { k => {}}
  end
  languages.each do |style, data|
    data.each do |lang, type|
      type.each do |key, value|
        if lang == :javascript
          new_hash[lang] = { key => value, :style => [keys[0], keys[1]] }
        else
          new_hash[lang] = { key => value, :style => [style]}
        end
      end
    end
  end
  puts lang_keys
  puts new_hash
  return new_hash
end
