require "pry"
# k2 languages
def reformat_languages(languages)
  r={}
  puts r
  languages.each_key do |k1|
    # binding.pry
    languages[k1].each do |k2,v1|
      if r.has_key?(k2)
        r[k2][:style]+=[k1]
      else
        r[k2]={}
        r[k2][:style]=[k1]
        r[k2][:type]=v1[:type]
      end
    end
  end
  r
end
