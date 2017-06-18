

# After looking at the solution to get a general idea.
# I went back to it the next day and managed to write a working one.


 def spiral_access(ary, iteration=0, &block)
     max_width = ary.length-1
     max_height = ary.first.length-1

     return if max_width/2 < iteration || max_height/2 < iteration

     iteration.upto(max_width-iteration) do |n|
         block.call(ary[iteration][n])
     end

     (iteration+1).upto(max_height-iteration) do |n|
         block.call(ary[n][max_width-iteration])
     end

     (max_width-1-iteration).downto(iteration) do |n|
        block.call(ary[max_height-iteration][n])
     end

     (max_height-1-iteration).downto(iteration+1) do |n|
         block.call(ary[n][iteration])
     end

     spiral_access(ary, iteration+1, &block)
 end
