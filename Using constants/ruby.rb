#task1 Створіть програму, яка приймає як аргументи послідовність чисел. Підрахуйте суму
#чисел і виведіть результат.

def method(*args)
    puts args.sum
end

method(2,3,1,4)

#task2 . Створіть програму, яка приймає рік, місяць та день народження користувача. Обчисліть
#вік користувача та виведіть результат.

require 'date'
class Me
    def getMyAge(day, month, year)
        today = Time.now.utc.to_date
        birth = Date.new(year, month, day)
        myAge = "#{((today - birth) / 365).floor} years"
        return myAge
    end
end 

iam = Me.new();
myAge = iam.getMyAge(28, 6 , 2002)
puts "My age - #{myAge}"

#task3 Створіть клас Hello у в окремому файлі. Усередині класу необхідно реалізувати метод
#Hello, який виводить вітання залежно від поточного часу доби. З 06:00 до 12:00 метод повинен
#повертати «Доброго ранку», з 12:00 до 18:00 — «Доброго дня», з 18:00 до 00:00 — «Доброго
#вечора», з 00:00 до 06:00 - «Доброї ночі». Підключіть клас у файлі з головною програмою та
#виведіть привітання за його допомогою.

require './hello'
greeting = Greeting.new()
greeting.getGreeting()


 
 

 


 

