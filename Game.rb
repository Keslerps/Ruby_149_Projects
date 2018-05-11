require_relative 'Dice'
require_relative 'Roulette'

def oneBet()
    dice = Dice.new
    puts "What is your bet?(0-14)\n"
            + "0 = Under 7\n"
            + "1 = Over 7\n"
            + "Any number 2-12\n"
            + "13 = Odd\n"
            + "14 = Even\n"
            + "Bet: "
    bet = gets.to_i
    puts "How Much would you like to bet?"
    betAmount = gets.to_i
    printf("You rolled: %d %d\n", dice.getFirst, dice.getSecond)
    payout = Roulette.payout(dice, bet, betAmount)

    if payout <= 0
        puts "Better Luck next time!"
    else
        printf("Congratulations! You won %.2f", payout)
    end

    return payout
end

totalWinnings = 0
response = "y"
while response == "y" do
    totalWinnings += oneBet()
    printf("Your total winnings so far are: $%.2f\n", totalWinnings)
    puts "Would you like to continue playing? (y or n)"
    response = gets.chomp
end

puts "Thanks for playing!"
