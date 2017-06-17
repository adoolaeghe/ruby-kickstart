# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

#define key

def staircase (n)
    to_return = Hash.new(0)
    arr = []
    0.upto(n) {|e| arr << e if e.odd?
      end
    }
    result = []
    arr.each do |i|
    0.upto(i) do |r| result << r if r.even?
      end
    end
  end
    to_return[i] = result
end



    # keyvalue = form 0 to n.even ? )
    # a
