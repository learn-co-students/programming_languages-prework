def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, name|
    name.each do |lan_name, type|
      if new_hash[lan_name] == nil
        new_hash[lan_name] = type
        new_hash[lan_name][:style] = []
      end
      if new_hash[lan_name] != nil
        new_hash[lan_name][:style] << style
      end
    end
  end
  new_hash
end

reformat_languages({
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
})
