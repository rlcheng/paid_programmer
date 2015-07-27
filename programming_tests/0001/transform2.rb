=begin

Write code in the count method below, such that I can say...

Transform.new.count

...and counts for the words located in the file input_files/transform2.txt
will be output. (See spec/test_0001_spec.rb to see the exact output)

=end 
class Transform2
  def count
    count = Hash.new
    count.default = 0 #this is key, without this you cannot increment as you step through the file
    f = File.open("./programming_tests/input_files/transform2.txt", "r")
    f.each do |line|
      count[line.strip]+=1 #strip the \n from each line
    end
    count
  end
end