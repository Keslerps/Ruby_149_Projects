def inputNumber(prompt)
    print prompt
    return gets.to_f
end

def inputLine(prompt)
    print prompt
    return gets.chomp
end

def calculate(number, percent)
    return number*(percent / 100)
end

def outputLine(heading, item)
    printf("\t%s:  %s\n", heading, item)
end

def outputNumber(heading, number)
    printf("\t\t%s%.2f\n", heading, number)
end

name = inputLine("Enter your Name: ")
anvMonth = inputNumber("Enter your Anniversary Month(1-12): ")
anvYear = inputNumber("Enter your Anniversary Year(2000-2017): ")
hours = inputNumber("Enter your hours worked this pay period(0-80): ")
job = inputLine("Enter your Job title: ")
rate = inputNumber("Enter your pay rate: ")

months = ((2018 * 12) + 2) - ((anvYear * 12) + anvMonth)
vacation = calculate(months, 2.50)
gross = hours * rate
retirement = calculate(gross, 3.00)
fedTax = calculate(gross - retirement, 15.25)
stateTax = calculate(gross - retirement, 5.38)
net = gross - retirement - fedTax - stateTax

for i in 1..51 do
    print "="
end
puts ""
puts "Meep Inc."
puts "\\(\"^\")/"
puts "------------"
outputLine("Name", name)
outputLine("Title", job)
anv = "#{anvMonth.to_i}/#{anvYear.to_i}"
outputLine("Anniversary", anv)
outputNumber("Months Worked: ", months)
outputNumber("Vacation hours earned: ", vacation)
puts "------------"
outputNumber("Gross Pay:\t$", gross)
outputNumber("Retirement:\t$", retirement)
outputNumber("Fed tax:\t$", fedTax)
outputNumber("State Tax:\t$", stateTax)
puts "------------"
outputNumber("Net Pay:\t$", net)
for i in 1..51 do
    print "="
end
puts ""