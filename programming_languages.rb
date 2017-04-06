require 'pry'

languages = {
  :oo => {
    :ruby => {:type => "interpreted"},
    :javascript => {:type => "interpreted"},
    :python => {:type => "interpreted"},
    :java => {:type => "compiled"} },
  :functional => {
    :clojure => {:type => "compiled"},
    :erlang => {:type => "compiled"},
    :scala => {:type => "compiled"},
    :javascript => {:type => "interpreted"}
   } }
=begin #GOAL
{
  :ruby => {:type => "interpreted",:style => [:oo]},
  :javascript => {:type => "interpreted",:style => [:oo, :functional]},
  :python => {:type => "interpreted",:style => [:oo]},
  :java => {:type => "compiled",:style => [:oo]},
  :clojure => {:type => "compiled",:style => [:functional]},
  :erlang => {:type => "compiled",:style => [:functional]},
  :scala => { :type => "compiled", :style => [:functional]}}
=end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, others|
    others.each do |name, type|
      if new_hash[name].nil?
        new_hash[name] = type
      end
      if new_hash[name][:style].class == NilClass
        new_hash[name][:style] = [style]
      else
        new_hash[name][:style] << style
      end
      # if new_hash[name][:style] == nil
      #   new_hash[name][:style] = [style]
      #   puts "When am I called?"
      #   #binding.pry
      # else
      #   puts "Am I ever called??"
      #   new_hash[name][:style] << [style]
      # end
    end
  end
  new_hash
end

puts reformat_languages(languages)
