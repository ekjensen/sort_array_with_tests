class Sorter
    
    def sort (input)

        not_sorted = true
        
        while not_sorted            
            not_sorted = false

            (0..input.length - 2).each do |i|
                if input [i] > input [i + 1]
                    input [i], input [i + 1] = input [i + 1], input [i]
                    not_sorted = true
                end

            end

        end
        input
    end

end
