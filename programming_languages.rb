=begin
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
=end

def reformat_languages(languages)

  new_hash = {}

  languages.each do |style, language_hash|
    language_hash.each do |language_name, attribute_hash|
      attribute_hash.each do |type, data|
        new_hash[language_name] = {:type => data, :style => []}
      end
    end
  end

  languages.each do |style, language_hash|
    language_hash.each do |language_name, attribute_hash|
      new_hash[language_name][:style] << style
    end
  end

  return new_hash
end
