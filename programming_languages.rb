require "pry"
def languages
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
end

=begin Javascript testing
def languages
  languages = {
    :functional => {
      :javascript => {
        :type => "interpreted"}},
    :oo => {
      :javascript => {
        :type => "interpreted"}}}
end
=end

def reformat_languages(languages)
  new_languages = {}

  languages.each do |style, all_data|
    all_data.each do |this_lang, this_data|
      if new_languages.include?(this_lang)
        new_languages[this_lang][:style] << style
      else
        this_data[:style] = []
        this_data[:style] << style
        new_languages[this_lang] = this_data
      end
    end
  end
  new_languages
end
