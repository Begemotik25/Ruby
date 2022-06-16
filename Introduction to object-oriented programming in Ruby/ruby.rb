#task 1. Нехай є фабрика, яка випускає дитячі іграшки: плюшеве ведмежа (TeddyBear), м'яч
#(Ball), кубики (Cube). Створіть клас Factory, який має метод Factory.build, який повертає
#об'єкт класів TeddyBear, Ball або Cube, який відповідає одній з іграшок. Як аргумент метод
#повинен приймати один із символів: :teddy_bear, :ball, :cube, за якими буде прийматися
#рішення про те, об'єкт якого класу слід повернути. У класі Factory слід передбачити метод total,
#який повертає загальну кількість іграшок. Крім того, необхідно реалізувати метод offers, що
#повертає хеш, ключами якого виступають символи :teddy_bear, :ball, :cube, а значення -
#кількість створених іграшок цього типу.


class Factory
    COUNT = 100

    TOYS = {
        teddy_bear: '35',
        ball: '50',
        cube: '15'
    }

    def total
        COUNT
    end

    def Factory.build(teddy_bear:)
        return TeddyBear.new
    end
    
    def offers()
        var = Hash[TOYS.sort_by { |k,v| }]
        puts var
    end
end


class TeddyBear < Factory
    attr_accessor :teddy_bear

    def Factory.build(teddy_bear:)
        return TeddyBear.new
    end
end

class Ball < Factory
    attr_accessor :ball

    def Factory.build(ball:)
        return Ball.new
    end
end

class Cube < Factory
    attr_accessor :cube

    def Factory.build(cube:)
        return Cube.new
    end
end



factory = Factory.new  
puts factory.total  
factory.offers 

teddy_bear = TeddyBear.new
cube = Cube.new
ball = Ball.new


#task 2. Додайте до стандартного класу Integer методи minutes, hours, days, які повертають
#кількість секунд, що відповідають заданим значенням. Наприклад, виклик 5.minutes повинен
#повернути 300, виклик 2.hours - 7200, а 1.days - 86400.

class Integer
    MINUTE = 60
    HOUR = 3_600
    DAY = 86_400
        def minutes
            self * MINUTE
        end
        def hours
            self * HOUR
        end
        def days
            self * DAY
        end
    end
puts 5.minutes  
puts 2.hours  
puts 1.days 
    


#task 3. Створіть клас, об'єкти якого моделюють перехід речовини в твердий (solid), рідкий
#(liquid) та газоподібний стан (gaz). Метод status має повертати стан об'єкта. Крім того, об'єкти
#класу повинні підтримувати методи, які переводять об'єкт з одного стану до іншого:
#− melt - із твердого в рідке;
#− freeze - з рідкого у тверде;
#− boil - з рідкого до газоподібного;
#− condense - із газоподібного в рідке;
#− sublime - із твердого в газоподібне;
#− deposit — із газоподібного до твердого.



class Substance
    def initialize
        puts "Substance created"
    end

    def status(string)
        if string == 'solid'
            puts "Solid substance"
        elsif string == 'liquid'
            puts "Liquid substance"
        else
            puts "Gaz substance"
        end
    end

    def melt(s1)
        if s1 == 'solid'
            puts "solid => liquid .... It's liquid substance"
        end
    end

    def freeze(s2)
        if s2 == 'liquid'
            puts "liquid => solid .... It's solid substance"
        end
    end

    def boil(s3)
        if s3 == 'liquid'
            puts "liquid => gaz .... It's gaz substance"
        end
    end

    def condense(s4)
        if s4 == 'gaz'
            puts "gaz => liquid .... It's liquid substance"
        end
    end

    def sublime(s5)
        if s5 == 'solid'
            puts "solid => gaz .... It's gaz substance"
        end
    end

    def deposit(s6)
        if s6 == 'gaz'
            puts "gaz => solid .... It's solid substance"
        end
    end

end

solid = Substance.new 
liquid = Substance.new 
gaz = Substance.new

solid.status('solid')
liquid.status('liquid')
gaz.status('gaz')

solid.melt('solid')
solid.sublime('solid')

liquid.boil('liquid')
liquid.freeze('liquid')

gaz.condense('gaz')
gaz.deposit('gaz')





