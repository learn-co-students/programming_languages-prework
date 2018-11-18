#require 'pry'

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
  languages.each do |type, lang|
    new_hash = new_hash.merge(lang)
    lang.each do |k, v|
      if k == :javascript
        new_hash[k][:style] = [:oo, :functional]
      else new_hash[k][:style] = [type]
      end
    end
  end
  return new_hash
end
