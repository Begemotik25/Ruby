class Greeting
    def getGreetingText(time)
        case time
        when 6..11
            puts "Доброго ранку"
        when 12..17
            puts "Доброго дня"
        when 18..23
            puts "Доброго вечора"
        when 24, 0..5
            puts "Доброї ночі"
        else
            puts "Неправильна дата!"
        end
    end

    def getGreeting()
        time = Time.new
        getGreetingText(time.hour)  
    end
end 