#task 1. Розширте клас Integer в такий спосіб, щоб числа відповідали метод to_a. За
#амовчуванням метод повинен переводити число у двійкове уявлення та повертати масив з нулів
#та одиниць, що представляють десяткове число у двійковому форматі:
#10.to_a #[1, 0, 1, 0]
#Необов'язковий аргумент методу to_a має задавати розрядність числа.
#Наприклад, для вісімкових та шістнадцяткових форматів метод повинен повертати такі
#масиви:
#10.to_s(8) # [1, 2]
#10.to_s(16) # ['a']
#task 2. Нехай є хеш, в якому ключем є назва книги, а значенням — масив авторів:
#authors = {
# 'Design Patterns in Ruby' => ['Russ Olsen'],
# 'Eloquent Ruby' => ['Russ Olsen'],
# 'The Well-Grounded Rubyist' => ['David A. Black'],
# 'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro
#Matsumoto'],
# 'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
# 'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
# 'Ruby Under a Microscope' => ['Pat Shaughnessy'],
# 'Ruby Performance Optimization' => ['Alexander Dymo'],
# 'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
#}
#Створіть із нього новий хеш, у якому ключем виступатиме автор, а значенням — кількість
#книжок, що він написав. Відсортуйте авторів за кількістю книг. У групі авторів, які написали
#однакову кількість книг, відсортуйте авторів за абеткою.


#task 1.

class Integers 
    def to_a(number)
        puts "В двійковому вигляді: %b" % number
    end 
end

integer = Integers.new()
integer.to_a(10) 


#task 2.
authors = {
    'Design Patterns in Ruby' => ['Russ Olsen'],
    'Eloquent Ruby' => ['Russ Olsen'],
    'The Well-Grounded Rubyist' => ['David A. Black'],
    'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro
   Matsumoto'],
    'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
    'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
    'Ruby Under a Microscope' => ['Pat Shaughnessy'],
    'Ruby Performance Optimization' => ['Alexander Dymo'],
    'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}

authors2 = {
    'Russ Olsen'=> 120,
    'Russ Olsen'=> 15,
    'David A. Black'=> 56,
    ['David Flanagan', 'Yukihiro Matsumoto']=> 76,
    'Paolo Perrotta'=> 17,
    ['Lucas Carlson', 'Leonard Richardson']=> 18,
    'Pat Shaughnessy'=> 11,
    'Alexander Dymo'=> 32,
    ['Hal Fulton', 'Andre Arko']=> 6
}
puts 'Сортування авторів за кількістю книг'
list = Hash[authors2.sort_by { |k,v| v }]
puts list

puts 'Сортування авторів за абеткою'
list2 = authors2.sort_by {|x| x.to_s }
puts list2




 