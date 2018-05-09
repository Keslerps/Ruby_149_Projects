class Dice
    def initialize()
        @first = 1 + rand(6) 
        @second = 1 + rand(6)
    end
    def initialize(first, second)
        @first = first
        @second = second
    end
    def addValues()
        first + second
    end
    def countValues(value)
        count = 0
        if (@first == value)
            count++
        if (@second == value)
            count++
        return count
    def getFirst()
        @first
    end
    def getSecond()
        @second
    end
end