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
    f = File.open("./programming_tests/input_files/transform2.txt", "r")

    ## The below block is just fine as it is. Another option is to use something like map, or
    ## inject, or some other handy Ruby function, or a few functions chained together, to get
    ## the same result. You might want to try to do this, and if you do, send it to me and
    ## I'll take a look.

    #solution1 
    #count = Hash.new(0)
    #f.each do |line|
    #  count[line.strip]+=1 #strip the \n from each line
    #end
    #count

    #solution2 
    #count = f.inject(Hash.new(0)) {|h,i| h[i.strip] +=1; h}

    #solution3
    count = f.each_with_object(Hash.new(0)) {|i, h| h[i.strip]+=1}

  end
end