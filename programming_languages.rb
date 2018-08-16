require "pry"

def reformat_languages(languages)
  hash = {}

  languages.each do |styler,lingo|
    lingo.each do |lingo,typea|
      hash[lingo] ||= typea
      hash[lingo][:style]=[]
    end
  end
  languages.each do |styler,lingo|
    lingo.each do |lingo,typea|
    hash[lingo][:style] << styler
  end
end
  return hash
end
