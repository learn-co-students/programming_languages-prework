

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
  # your code here

  #variables to build new hash, and collect data
  new_hash = {}
  style_oo_array = []
  style_functional_array = []

  # iterate through original hash to collect and separate data
  # into separate arrays per their style
  languages.each do |style, languages1|
    if style == :oo
    style_oo_array.push(style)
    languages1.each do |language_name, qualities|
    style_oo_array.push(language_name)
    end
    end
    if style == :functional
      style_functional_array.push(style)
      languages1.each do |language_name, qualities|
      style_functional_array.push(language_name)
      end
    end

    ## iterate through the data again to begin moving it over to the new hash
  languages1.each do |language_name, qualities|
  new_hash[language_name] = qualities
  style_oo_array.each do |language_name1|
    if language_name1 == language_name
    new_hash[language_name].merge!(:style => [style_oo_array[0]])
    end
  end
  style_functional_array.each do |language_name1|
    if language_name1 == language_name
    new_hash[language_name].merge!(:style => [style_functional_array[0]])
    end
  end
  end
    ##since one language is in two categories, the below code is designed to account for that
    ## to ensure that the proper information is displayed
  languages1.each do |language_name, qualities|
  style_oo_array.each do |language_name1|
  style_functional_array.each do |language_name2|
    if language_name == language_name1 && language_name == language_name2
    new_hash[language_name][:style] = [style_oo_array[0], style_functional_array[0]]
    end
  end
  end
  end
  end
  return new_hash
end
