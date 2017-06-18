

# Couldn't solve this one out myself. I have made multiple tests for the solution, which were unhelpfull.
# I am not sure I have well understood the recursive logic. I would like to return to this in week 3.  

 def pathify(dir=Hash.new)
     return dir.map{|i| "/#{i}"} if dir.is_a? Array
     to_return = []
     dir.each do |k, v|
         working_directory = "/#{k}"
         p working_directory
         paths = pathify(v)
         paths.each do |path|
             to_return << (working_directory + path)
         end
     end
     to_return
 end
