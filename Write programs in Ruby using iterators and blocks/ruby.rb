#task 1. Створіть клас користувачів Student, який дозволяє зберігати в об'єкті прізвище, ім'я, по
#батькові користувача, а також його оцінку за предмет (в діапазоні від 1 до 5). Створіть програму,
#яка формує 10 масив об'єктів класу Student. Обчисліть середню оцінку та виведіть список
#користувачів, чия оцінка вища за середню.

class Student
    def initialize(name, surname,bb, marks)
        @name = name
        @surname = surname
        @bb = bb
        @marks = marks
    end
        
    def to_s
        "Name #{@name}, surname #{@surname}, bb #{@bb}, marks #{@marks}"
    end
        alias to_str to_s

    def get_mark
        @marks
    end
end

def get_average_mark(marks)
    sum = 0;
    for value in marks do
        sum = sum + value
    end
    return  sum / marks.length
end

students = []

stud1 = Student.new('Ivan','AA','DD',4)
students.push(stud1)
stud2 = Student.new('Sergey','BB','SS',5)
students.push(stud2)
stud3 = Student.new('Vlad','CC','AA',3)
students.push(stud3)
stud4 = Student.new('Alina','DD','EE',5)
students.push(stud4)
stud5 = Student.new('Liana','EE','RR',4)
students.push(stud5)
stud6 = Student.new('Sveta','RR','TT',3)
students.push(stud6)
stud7 = Student.new('Nikolai','TT','YY',3)
students.push(stud7)
stud8 = Student.new('Borya','NN','KK',3)
students.push(stud8)
stud9 = Student.new('Tonya','XX','NN',1)
students.push(stud9)
stud10 = Student.new('Tanya','YY','RR',3)
students.push(stud10)

marks = []
for student in students do
    marks.push(student.get_mark())
end

average_mark = get_average_mark(marks)

for student in students do
    if(student.get_mark() > average_mark)
        puts student.to_s()
    end
end

 
# task 2. Створіть хеш, у якому як ключ виступає назва планети Сонячної системи, а як значення —
#маса планети. Сформуйте дві колекції з трьома найлегшими та трьома найважчими планетами.
#Виведіть їх у стандартний потік виводу.


planet = {
    mercury: 16,
    venus: 21,
    earth: 32,
    mars: 11,
    jupiter: 20,
    saturn: 33,
    uranus: 17,
    neptune: 170
}

max = Hash[planet.sort_by { |k,v| -v }[0..2]]
min = Hash[planet.sort_by { |k,v| -v }[planet.length-3..planet.length]]
puts max
puts min

# task 3. Створіть метод walk, який приймає як єдиний аргумент масив довільного ступеня
#вкладеності: arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]
#Метод повинен реалізовувати блок з єдиним параметром, який елементи вкладеної
#послідовності передаються у вигляді лінійного списку walk(arr) { |i| puts i }
#Для масиву arr параметр i має пробігати значення від 1 до 9.
arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]
def walk(a)
    yield a
end

walk(arr) { |i| puts i }

# task 4. Числа Фібоначчі - це послідовність виду 0, 1, 1, 2, 3, 5, ..., де кожне число є сумою двох
#попередніх чисел. Створіть метод fibonacci, який приймає як аргумент порядковий номер числа
#Фібоначчі, а блок передає послідовність чисел від нуля до заданого числа:
#fibonacci(10) { |f| print "#{f}" } # 0 1 1 2 3 5 8 13 21 34 55


def fibonacci(number)
    arr = %i[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711]
    arr.each_with_index do | el, i |
        return if i >= number
        yield el
    end
end

fibonacci(10) { |f| print "#{f} " }