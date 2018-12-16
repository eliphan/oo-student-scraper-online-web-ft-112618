class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    student_hash.map { |key,value| self.send(("#{key}="),value) }
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.map { |student_hash| Student.new(student_hash) }
  end


  def add_student_attributes(attributes_hash)
    attributes_hash.map { |att,value| self.send(("#{att}=",value)) }
  end

  def self.all
    
  end
end

