class Dice
    def initialize(first = nil, second = nil)
        if (first == nil)
            @first = 1 + rand(6)
        else
            @first = first
        end
        if (second == nil)
            @second = 1 + rand(6)
        else
            @second = first
        end
    end
    def addValues
        @first + @second
    end
    def countValues(value)
        count = 0
        if (@first == value)
            count += 1
        end
        if (@second == value)
            count += 1
        end
        return count 
    end
    def getFirst
        @first
    end
    def getSecond
        @second
    end
end