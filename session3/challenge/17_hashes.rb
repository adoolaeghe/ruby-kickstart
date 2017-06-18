# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse (list)
  while list
    hash_based = list[:data]
    list = list[:next]
    hash_based.split("/").reverse
    puts arr.join("/")
  end
end

def print_list_in_reverse(head)
     if head[:next] == nil
         puts head[:data]
     else
         print_list_in_reverse(head[:next])
         puts head[:data]
     end
 end
