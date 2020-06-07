class Student
  attr_reader :id
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def self.create_table()
    sql = <<-SQL
      
      SQL
    DB[:con].execute()
  end
end
