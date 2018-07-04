require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
      langs.each do |langss, type|
        type.each do |typee, int_or_comp|
          new_hash[langss]= {typee => int_or_comp}
        end
      end
    end
  
  new_hash.each do |lang, data|
    data[:style]= []
  end
  
  #match up oo and functional with languages
  array_oo = []
  array_func = []
  languages.each do |style, langs|
      langs.each do |langss, type|
        if style == :oo
          array_oo << langss
        else
          array_func << langss
        end
      end
    end
  
  new_hash.each do |lang, data|
    data.each do |t_or_s, datas|
      if t_or_s == :style
        if array_oo.include? lang
          datas << :oo
        end
        if array_func.include? lang
          datas << :functional
          #binding.pry
        end
      end
    end
  end
  #binding.pry
  
  
  new_hash
end
