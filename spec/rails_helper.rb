# you don't need this @files instance variable here -- and you never want to have a space before
# line like you have. You can just say

Dir.glob(File.join(File.dirname(__FILE__), "../programming_tests/0001/*")).map{|f| require(f)}

# also -- where is my byebug? Take another look at the fix_tests.rb file - I want to be able to
# put byebug statements in my tests so I can debug them. I put a byebug statement in my tests.
# Run the tests again and see what happens.
 