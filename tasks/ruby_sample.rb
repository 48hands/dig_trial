
class MyWorkflow
  def ruby_task0
    puts "Hello Ruby task"
  end

  def ruby_task1(arg1:)
    puts "running ruby_task1"
    puts "arg1: #{arg1}"
  end

  def self.ruby_task2(arg2:, arg3: "this is default value")
    puts "running ruby_task2"
    puts "arg2: #{arg2}"
    puts "arg3: #{arg3}"
  end

end