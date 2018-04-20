print "Enter your Fullname: "
name = gets.chomp

print "Enter your Anniversary Month(1-12): "
anivMonth = gets.chomp.to_i

print "Enter your Anniversary Year(2000-2017): "
anivYear = gets.chomp.to_i

print "Enter your hours worked this pay period(0-80): "
hours = gets.chomp.to_i

print "Enter your Job Title: "
job = gets.chomp

print "Enter your pay rate: "
rate = gets.chomp.to_f

monthsWorked = ((2017 - anivYear) * 12) + (12 - anivMonth) + 1
vacation = monthsWorked * 0.025
gross = hours * rate
retirement = gross * 0.03
tax = (gross - retirement) * 0.2063
net = gross - retirement - tax 

for i in 1..42 do
    print "="
end
puts "\nMeep Inc."
puts "\\(\"^\")/"
puts "----------"
puts "Name: #{name}"
puts "Title: #{job}"
puts "Anniversary: #{anivMonth}/#{anivYear}"
puts "Months Worked: #{monthsWorked} months"
puts "Vacation hours earned: #{vacation}"
puts "----------"
printf("Gross Pay:\t\t$%.2f\n", gross)
printf("Retirement:\t\t$%.3f\n", retirement)
printf("Tax:\t\t\t$%.2f\n", tax)
puts "----------"
printf("Net Pay:\t\t$%.2f\n", net)
for i in 1..42 do
    print "="
end
puts ""
