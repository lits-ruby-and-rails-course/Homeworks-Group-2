=begin
Знайти унікальні серед 2х обєктів методи. 
У цьому завданні, метод get_uniq_methods приймає два параметри: 
об'єкт1, об'єкт2. 
Ви маєте знайти унікальні методи (різницю між ними). 
Тобто, якщо для першого об'єкту ми маємо: [:method1, :method2, :method3], 
а для другого об'єкту: [:method1, :method2, :method5], 
Програма повинна повернути => [:method5, :method3]
=end


def get_uniq_methods obj1, obj2
	(obj1.class.methods + obj2.class.methods).uniq
end
