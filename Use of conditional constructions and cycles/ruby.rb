# task 1. Створіть метод, який надає довідник днів тижня (1 – понеділок, 2 – вівторок, 3 – середа,
#4 – четвер, 5 – п'ятниця, 6 – субота, 7 – неділя). Метод повинен приймати номер та повертати
#назву для тижня, що відповідає цьому номеру. У разі помилкового номера має повертатись
#значення nil

class DOW
    def getDay(number)
        case number
        when 1
            puts "понеділок"
        when 2
            puts "вівторок"
        when 3
            puts "середа"
        when 4
            puts "четвер"
        when 5
            puts "п'ятниця"
        when 6
            puts "субота"
        when 7
            puts "неділя"
        else
            puts nil 
        end
    end
end 

day = DOW.new();
myDay = day.getDay(3)
puts myDay

# task 2.Створіть програму, яка приймає як аргумент три цілих числа. Перевірте, що передані
#числа дійсно цілі. Як результат, програма повинна повертати максимальне значення серед чисел.

def getNumber(numb1,numb2,numb3)
    if(numb1.is_a?(Integer) && numb2.is_a?(Integer) && numb3.is_a?(Integer))
        answer = [numb1,numb2,numb3].max
        puts answer
    else
        puts "error"
    end
end
getNumber(140,2,3)

# task 3. Створіть масив із 10 рядків із прізвищами користувачів. Виведіть список користувачів у
#алфавітному порядку.

surname = ["Kotlyarenko", "Haisiuk", "Chernuik", "Ivanov", "Petrov", "Sidorov", "Ff", "Vv", "Aa", "Er"]
list = surname.sort
puts list 

# task 4.У UNIX-подібних операційних системах є утиліта ncal, яка виводить календар на
#поточний місяць. Створіть на програмі Ruby, яка виводить аналогічний календар для поточного місяця.
require 'date'

days = %w[Monday Tuesday Wednesday Thusday Friday Saturday Sunday]
puts " #{Date::MONTHNAMES[Date.today.month]} #{Date.today.year} "
start_of_month_weekday = (Date.today - Date.today.mday + 1).cwday
end_of_month = Date.civil(Date.today.year,Date.today.month, -1).day

i = 0
while i < days.size
    print days[i]
    day_of_month = i - start_of_month_weekday + 2
    
    
    while day_of_month <= end_of_month
        print(day_of_month <= 0 ? "  " : " #{day_of_month}")
        day_of_month += 7 
    end

    i+=1
    puts
end 
