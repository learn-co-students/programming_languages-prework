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

def reformat_languages(languages)
  new_hash = {}
  # style = []
  languages.each do |k, v| #k == :oo or :functional
    v.each do |key, value| #key = languages & value = types (int or comp)
      style = []
      new_hash[key] = value
      # new_hash[key][:style] = style
        # key.each do |lang|
          # new_hash[:style] = style
          # binding.pry
      # key: { <-- ruby
    #     value: <-- :type => "interpreted"
    #     k: <-- :oo
    # }

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

# def reformat_languages(languages)
#   new_hash = {}
#   languages.each do |oo_functional, language_hash|
#     language_hash.each do |language, lang_attr|
#       lang_attr.each do |type, type_string|
#         new_hash[language] ||= {}
#         new_hash[language][:style] <<oo_functional
