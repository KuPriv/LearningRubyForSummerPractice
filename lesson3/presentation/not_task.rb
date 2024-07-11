File.rename('lesson3/soldiers.txt', 'lesson3/students.txt')
file = File.open("lesson3/students.txt")
file_data = file.read
puts file_data.split("\n")
file.close

file = File.open("lesson3/students.txt")
file_data = file.readlines.map {|line| line.chomp}
puts file_data = file.readlines.map(&:chomp)
file.close

file_data = File.read("lesson3/students.txt").split("\n")
file.close

#students = []
#File.foreach("lesson3/z1.rb") {|line| students.push(line.chomp)}

#puts students
#file.close

File.open("lesson3/log.txt", "w") { |f| f.write "#{Time.now} - User logged in\n"}

File.write("lesson3/students.txt", "\ndata...", mode: "a")



STUDENTS_LIST_PATH = 'lesson3/students.txt'
BUFFER = 'lesson3/buffer.txt'
def index
  File.foreach(STUDENTS_LIST_PATH) {|student| puts student}
end
file.close

def where(name)
  File.foreach(STUDENTS_LIST_PATH).with_index do |student, index|
    @student_id = index if student.include?(name)
  end
  @student_id
end

def update(id, name)
  file = File.open(BUFFER, 'w')
  File.foreach(STUDENTS_LIST_PATH).with_index do |student, index|
    file.puts(id == index ? name : student)
  end
  file.close
  File.write(STUDENTS_LIST_PATH, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end

index
puts where('Ivan Petrov')
puts update(2, "Egoo goo")
index

File.rename('lesson3/students.txt', 'lesson3/soldiers.txt')
puts File.size('lesson3/soldiers.txt')
puts File.exists?("lesson3/log.txt")
puts File.extname("lesson3/log.txt")
puts File.basename("lesson3/log.txt")
puts File.dirname('lesson3/log.txt')
puts File.directory?("lesson3")
puts File.directory?("test.rb")
puts "-" * 30
puts Dir.glob('*')
puts Dir.glob("lesson3/*not*")
puts Dir.glob('lesson3/*.txt')
puts Dir.pwd
puts Dir.exists?("lesson1")


