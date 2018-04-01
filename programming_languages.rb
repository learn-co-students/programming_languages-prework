require 'pry'

def languages
{
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
end

# def oo_languages
#   ool = languages[:oo]
#   # javascript_lang = languages[:oo][:javascript]
#   # python_lang = languages[:oo][:python]
#   # java_lang = languages[:oo][:java]
#   ool
#   binding.pry
# end
#
# def functional_languages
#   func = languages[:functional]
#   # erlang = languages[:functional][:erlang]
#   # scala = languages[:functional][:scala]
#   # javascript = languages[:functional][:javascript]
# end
# key: { <-- ruby
#     value: <-- :type => "interpreted"
#     k: <-- :oo
# }


def x_reformat_languages(languages)
  new_hash = {}
  # style = []
  languages.each do |k, v| #k == :oo or :functional
    v.each do |key, value| #key = languages & value = types (int or comp)
      style = []
      new_hash[key] = value

    if key == :javascript
      style << :oo << :functional
    else
      style << k
    end

    new_hash[key][:style] = style
      # binding.pry

    end
  end

  new_hash
  # binding.pry
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |oo_functional, language_hash|
    #oo_function -> :oo, :functional
    #language_hash -> {:ruby => {...}}
    language_hash.each do |language, lang_attr|
      #language -> :ruby
      #lang_attr -> {:type => "interpreted"}
      lang_attr.each do |type, type_string|
        #type -> :type
        #type_string -> "interpreted"
        if new_hash[language].nil? #== ""
          new_hash[language] = {}
        end
        new_hash[language][:style] = []
        new_hash[language][:style] << oo_functional
        if new_hash[language][type].nil?
          new_hash[language][type] = type_string
        end
      end
    end
  end
  new_hash
end
