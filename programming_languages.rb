def reformat_languages(languages)
    new_hash = {}
    languages.each do |x, y|
        y.each do |pl, o|
            o.each do |q, w|
                new_hash[pl] = {q => w, :style => [x]}

            end
        end
    end
    new_hash[:javascript][:style].push(:oo)
    new_hash
end
