#task Створіть клас Unit, який моделює колектив із семи осіб: керівник, два бекенд-розробники,
#два фронтенд-розробники, тестувальник і дизайнер. Для моделювання кожного співробітника
#створіть вкладений клас Unit::Employee. Об'єкт класу Unit повинен дозволяти додавати,
#видаляти, редагувати співробітників та виводити їх повний список в алфавітному порядку. Крім
#того, створіть метод або набір методів, що дозволяють фільтрувати команду за ролями,
#наприклад, запитувати список тестувальників або бекенд-розробників.
class Unit
    include Enumerable
    def initialize
        @employees = %w[head backend1 backend2 frontend1 frontend2 QA designer]
    end
    def each
        @employees.each { |x| yield x}
    end
    def add_employee(word)
        @employees = %w[head backend1 backend2 frontend1 frontend2 qa designer]
        p @employees.push(word)
    end
    def delete_employee(word)
        @employees = %w[head backend1 backend2 frontend1 frontend2 qa designer]
        @employees.delete(word)
        p @employees
    end
    def sorted
        @employees = %w[head backend1 backend2 frontend1 frontend2 qa designer]
        p @employees.sort
    end
    def sorted_backend
        p 'Employee is backend'
        @employees = %w[head backend1 backend2 frontend1 frontend2 qa designer]
        p @employees.select { |employee| employee == "backend1" }
        p @employees.select { |employee| employee == "backend2" }
    end
    def sorted_frontend
        p 'Employee is frontend'
        @employees = %w[head backend1 backend2 frontend1 frontend2 qa designer]
        p @employees.select { |employee| employee == "frontend1" }
        p @employees.select { |employee| employee == "frontend2" }
    end


    class Employee 
        attr_accessor :head, :backend1, :backend2, :frontend1, :frontend2, :qa, :designer
        def init_head(head:)
            @head = head
            puts "It's head"
        end
        def init_backend1(backend1:)
            @backend1 = backend1
            puts "It's backend1"
        end
        def init_backend2(backend2:)
            @backend2 = backend2
            puts "It's backend2"
        end
        def init_frontend1(frontend1:)
            @frontend1 = frontend1
            puts "It's frontend1"
        end 
        def init_frontend1(frontend2:)
            @frontend2 = frontend2
            puts "It's frontend2"
        end 
        def init_QA(qa:)
            @qa = qa
            puts "It's QA"
        end 
        def init_designer(designer:)
            @designer = designer
            puts "It's designer"
        end 
    end
end
    
unit = Unit.new
unit.each { | c | puts c}
unit.add_employee('backend3')
unit.delete_employee("head")
unit.sorted()
unit.sorted_backend()
unit.sorted_frontend()

