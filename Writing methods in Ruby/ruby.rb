#task 1. Створіть клас Hello, під час створення об'єкта якого конструктору можна було
#передавати параметр Hello.new('world'). При виклик методу say цього об'єкта hello.say або
#при виведенні об'єкта методом puts виводилася б фраза Hello, world!

class Hello  
    def initialize(word)
        @word = word
    end
    def say
        puts "Hello, #{@word}!"
    end
end

hello = Hello.new('world')
hello.say

#task 2. Створіть клас користувача User, який би при створенні об'єкта дозволяв задавати
#прізвище, ім'я та по батькові. Метод повинен реалізовувати методи читання та встановлення
#прізвища, імені та по батькові.

class User
    def initialize(name,surname,pob)
        @name=name
        @surname=surname
        @pob=pob
    end
    def GetName
        print(@name)
    end
    def GetSurname
        print(@surname)
    end
    def GetPob
        print(@pob)
    end
end
      
user=User.new("Alina ","Haisiuk ","Valerievna ")
user1=User.new("Ivan ","Ivanov ","Ivanovich ")
user2=User.new("Olya ","Stepanova ","Petrovna ")
puts 
user.GetName
user.GetSurname
user.GetPob

puts 
user1.GetName
user1.GetSurname
user1.GetPob

puts 
user2.GetName
user2.GetSurname
user2.GetPob
 
#task 3.  Створіть клас Group, конструктор якого може приймати довільну кількість об'єктів класу
#User (з попереднього завдання). Реалізуйте в класі Group метод each, за допомогою якого можна
#обійти список користувачів, наприклад, щоб вивести їх у стандартний потік.

class Group < User    
    def initialize(*users)
        @users=users
    end
    def each()
        @users.each { |c| yield c}
    end
end
 

users = %w[Alina Valentina Ivanna Stepan Fedor Nikolai]
group = Group.new(users)
group.each { |user| puts user }

#task 4. Створіть клас Foo, метод new якого може приймати хеш. Об'єкти класу Foo повинні
#відповідати методам, назви яких збігаються з ключами хеша. Як результат методи повинні
#повертати значення, що відповідають ключу в хеш.

class Foo 
    def new(params) 
        p params
    end
    def one(params)
        p params.keys
    end
    def two(params)
        p params.keys
    end
    def three(params)
        p params.keys
    end

end
 

foo = Foo.new
#вывод всего хэша
foo.new({one: 'Ruby'})
#вывод ключа
foo.one({one: 'Ruby'})

foo2 = Foo.new
#вывод всего хэша
foo2.new({two: 'on'})
#вывод ключа
foo2.two({two: 'on'})

foo3 = Foo.new
#вывод всего хэша
foo3.new({three: 'Rails'})
#вывод ключа
foo3.one({three: 'Rails'})

#task 5. Створіть клас List, метод якого може приймати довільну кількість параметрів. Об'єкти
#класу повинні підтримувати метод each, блок якого послідовно передаються параметри, задані
#при створенні об'єкта.

class List 
    def initialize(list = [])
        @list = list
        @list = yield if block_given?
    end

    def each()
        @list.each { |c| yield c}
    end
end

lists = %w[червоний оранжевий жовтий зелений блакитний синій фіолетовий]
list = List.new(lists)
list.each { |list| puts list }