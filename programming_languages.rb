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
    new_hash = {}
    lang_names = []
    languages.each do |style, list|
      list.each do |lang_name, data|
        lang_names.push(lang_name.to_sym)
      end
    end
    lang_names.each do |name|
      new_hash[name] = {}
    end

    languages.each do |style, list|
        list.each do |lang_name, data|
          new_hash[lang_name] = data
        end
      end

    languages.each do |style, list|
        list.each do |lang_name, data|
          new_hash[lang_name][:style] = []
        end
      end

      languages.each do |style, list|
        if style == :oo
          list.each do |lang_name, data|
          new_hash[lang_name][:style].push(:oo)
          end
        elsif style == :functional
          list.each do |lang_name, data|
          new_hash[lang_name][:style].push(:functional)
          end
        end
      end
    return new_hash
  end



reformat_languages(languages)
