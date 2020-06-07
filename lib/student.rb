class Student
  attr_reader :id
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def save()
    sql = <<-SQL
      INSERT INTO students (name, grade)
      VALUES('#{name}', '#{grade}')
    SQL
    DB[:conn].execute(sql)
    sql = <<-SQL
      SELECT id FROM students ORDER BY id DESC LIMIT 1
    SQL
    @id = DB[:conn].execute(sql).
  end
  
  def self.create_table()
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER  
      );
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table()
    sql = <<-SQL
      DROP TABLE IF EXISTS students;
    SQL
    DB[:conn].execute(sql)
  end
end
