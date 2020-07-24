
module Format
    def self.num_to_currency price

        if price.split('.').size > 1
            "$#{price}"
        else
            "$#{price}.00"
        end
    end

    def self.add_commas(num_string)
        num_string.reverse.scan(/\d{3}|.+/).join(",").reverse
    end
end


    