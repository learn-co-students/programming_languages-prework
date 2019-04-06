  require "pry"
def reformat_languages(languages)
  languages.each do |key, value|
    if key == :oo
      languages[:ruby] = languages.delete :oo
      binding.pry
    end
  end
end

















#new_hash = languages
#languages[:ruby] = languages.delete :oo
#languages[:ruby] = {:type => "interpreted"}
#languages[:ruby] = {:style => [:oo]}
