#task 1. Створіть клас людини, від якого успадкуйте клас користувача веб-сайту, від якого в свою чергу
#успадкуйте кілька класів:
#− звичайний відвідувач;
#− автор матеріалу;
#− адміністратор;
#− модератор.
#2. Всім об'єктам класів додайте можливість задавати прізвище, ім'я та по батькові користувача, а
#також отримувати ці відомості.
#3. Досягніть, щоб метод new класу користувача приймав блок, у якому можна ініціалізувати
#об'єкт.
#4. Додайте в кожен із класів інстанс-метод say, який повинен повідомляти роль користувача.
#Перевизначте метод to_s, який повинен повертати той самий рядок, що й метод say. Намагайтеся 
#максимально виключити повтори коду.

class Person 
  def initialize(name_person,pob_person,surname_person)
    @name_person=name_person
    @pob_person=pob_person
    @surname_person=surname_person
  end
  def GetName_person
    print(@name_person)
  end
  def GetPob_person
    print(@pob_person)
  end
  def GetSurname_person
    print(@surname_person)
  end
  def say(str)
    puts "Your role #{str}!"
  end
  def to_s
    puts say("person")
  end
end

print("Text name_person ")
name_person=gets.chomp()
print("Text pob_person ")
pob_person=gets.chomp()
print("Text surname_person ")
surname_person=gets.chomp()
person1=Person.new(name_person,pob_person,surname_person)
person1.GetName_person
person1.GetPob_person
person1.GetSurname_person
person2=Person.new("", "","")
person2.say("person")
person2.to_s

class User < Person
  attr_accessor :name_user, :pob_user, :surname_user

  def initialize(name_user,pob_user,surname_user)
    @name_user=name_user
    @pob_user=pob_user
    @surname_user=surname_user
  end
  def GetName_user
    print(@name_user)
  end 
  def GetPob_user
    print(@pob_user)
  end
  def GetSurname_user
    print(@surname_user)
  end
  def say(str)
    puts "Your role #{str}!"
  end
  def to_s
    puts say("User")
  end
  def new(name_user: 'Alina', pob_user: 'Valerienva',surname_user: 'Haisiuk')
    @name_user = name_user
    @pob_user = pob_user
    @surname_user = surname_user
    puts name_user, pob_user, surname_user
  end
end

print("Text name_user ")
name_user=gets.chomp()
print("Text pob_user ")
pob_user=gets.chomp()
print("Text surname_user ")
surname_user=gets.chomp()
user1=User.new(name_user,pob_user,surname_user)
user1.GetName_user
user1.GetPob_user
user1.GetSurname_user
user1.say("User")
user1.to_s
user1.new 


class Visitor < User
  def initialize(name_visitor,pob_visitor,surname_visitor)
    @name_visitor=name_visitor
    @pob_visitor=pob_visitor
    @surname_visitor=surname_visitor
  end
  def GetName_visitor
    print(@name_visitor)
  end
  def GetPob_visitor
    print(@pob_visitor)
  end
  def GetSurname_visitor
    print(@surname_visitor)
  end
  def say(str)
    puts "Your role #{str}!"
  end
  def to_s
    puts say("Visitor")
  end
end

print("Text name_visitor ")
name_visitor=gets.chomp()
print("Text pob_visitor ")
pob_visitor=gets.chomp()
print("Text surname_visitor ")
surname_visitor=gets.chomp()
visitor1=Visitor.new(name_visitor,pob_visitor,surname_visitor)
visitor1.GetName_visitor
visitor1.GetPob_visitor
visitor1.GetSurname_visitor
visitor1.say("Visitor")
visitor1.to_s


class Author < User
  def initialize(name_author,pob_author,surname_author)
    @name_author=name_author
    @pob_author=pob_author
    @surname_author=surname_author
  end
  def GetName_author
    print(@name_author)
  end
  def GetPob_author
    print(@pob_author)
  end
  def GetSurname_author
    print(@surname_author)
  end
  def say(str)
  puts "Your role #{str}!"
  end
  def to_s
    puts say("Author")
  end
end

print("Text name_author ")
name_author=gets.chomp()
print("Text pob_author ")
pob_author=gets.chomp()
print("Text surname_author ")
surname_author=gets.chomp()
author1=Author.new(name_author,pob_author,surname_author)
author1.GetName_author
author1.GetPob_author
author1.GetSurname_author
author1.say("Author")
author1.to_s


class Administrator < User
  def initialize(name_administrator ,pob_administrator ,surname_administrator )
    @name_administrator =name_administrator 
    @pob_administrator =pob_administrator 
    @surname_administrator =surname_administrator 
  end
  def GetName_administrator 
    print(@name_administrator )
  end
  def GetPob_administrator 
    print(@pob_administrator )
  end
  def GetSurname_administrator 
    print(@surname_administrator )
  end
  def say(str)
    puts "Your role #{str}!"
    end
  def to_s
    puts say("Administrator")
  end
end

print("Text name_administrator ")
name_administrator=gets.chomp()
print("Text pob_administrator ")
pob_administrator=gets.chomp()
print("Text surname_administrator ")
surname_administrator=gets.chomp()
administrator1=Administrator.new(name_administrator,pob_administrator,surname_administrator)
administrator1.GetName_administrator
administrator1.GetPob_administrator
administrator1.GetSurname_administrator
administrator1.say("Administrator")
administrator1.to_s


class Moderator < User
  def initialize(name_moderator ,pob_moderator ,surname_moderator )
    @name_moderator =name_moderator 
    @pob_moderator =pob_moderator 
    @surname_moderator =surname_moderator 
  end
  def GetName_moderator 
    print(@name_moderator )
  end
  def GetPob_moderator 
    print(@pob_moderator )
  end
  def GetSurname_moderator 
    print(@surname_moderator )
  end
  def say(str)
    puts "Your role #{str}!"
    end
  def to_s
    puts say("Moderator")
  end
end

print("Text name_moderator ")
name_moderator=gets.chomp()
print("Text pob_moderator ")
pob_moderator=gets.chomp()
print("Text surname_moderator ")
surname_moderator=gets.chomp()
moderator1=Moderator.new(name_moderator,pob_moderator,surname_moderator)
moderator1.GetName_moderator
moderator1.GetPob_moderator
moderator1.GetSurname_moderator
moderator1.say("Moderator")
moderator1.to_s


 
 

