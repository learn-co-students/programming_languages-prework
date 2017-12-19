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

  # set language names as the keys for the new_hash
  languages.each do |type, language|

    language_names = languages[type].keys


    language_names.each do |language_name|

      if new_hash[language_name] == nil
        new_hash[language_name] = {:style => [] }
      end

      new_hash[language_name][:style] << type
      new_hash[language_name][:type] = languages[type][language_name].fetch(:type)

    end
  end

  new_hash
end

reformat_languages(languages)
