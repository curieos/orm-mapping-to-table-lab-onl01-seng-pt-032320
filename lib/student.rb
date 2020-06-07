class Student
  attr_reader :id
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def self.create_table()
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
          
      );
      SQL
    DB[:con].execute(sql)
  end
end
