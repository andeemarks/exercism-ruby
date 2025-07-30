module ResistorColorDuo
    def self.value(duo)
        colour1, colour2 = duo

        "#{value_for(colour1)}#{value_for(colour2)}".to_i
    end

    def self.value_for(colour)
        case colour
        when "black" then 0
        when "brown" then 1
        when "red" then 2
        when "orange" then 3
        when "yellow" then 4
        when "green" then 5
        when "blue" then 6
        when "violet" then 7
        when "grey" then 8
        when "white" then 9
        end
    end
end
