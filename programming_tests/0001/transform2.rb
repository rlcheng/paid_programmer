=begin

Write code in the count method below, such that I can say...

Transform.new.count

...and counts for the words located in the file input_files/transform2.txt
will be output. (See spec/test_0001_spec.rb to see the exact output)

=end 

## This is good straightforward work. Well done! None of the following is meant as criticism:
## you might want to be aware of a couple shortcuts:
## 
class Transform2
  def count
    count = Hash.new
    count.default = 0 #this is key, without this you cannot increment as you step through the file

    # instead of the two above lines, you can just say count = Hash.new(0), that sets 0 as the 
    # default value for every new key

    f = File.open("./programming_tests/input_files/transform2.txt", "r")

    ## The below block is just fine as it is. Another option is to use something like map, or
    ## inject, or some other handy Ruby function, or a few functions chained together, to get
    ## the same result. You might want to try to do this, and if you do, send it to me and
    ## I'll take a look.

    f.each do |line|
      count[line.strip]+=1 #strip the \n from each line
    end
    count
  end
end