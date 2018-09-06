#require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |root_lang, data|
    data.each do |langs, explanation|
      explanation.each do |k,v|
        new_hash[langs] = {k=>v, :style=>[root_lang]}
        if langs == :javascript
          new_hash[:javascript][:style] << :oo
        end
      end
    end
  end
  new_hash
end
