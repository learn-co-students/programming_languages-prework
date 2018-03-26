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
  new_lang = {}
  languages.each do |oo_f,langs|
    langs.each do |name,data|
      new_lang[name] = {type: data[:type]} if new_lang.has_key?(name) == false
      if new_lang[name].has_key?(:style)
        new_lang[name][:style] << oo_f
      else 
        new_lang[name][:style] = [oo_f]
      end
    end
  end
  return new_lang
end